set :db_passwords, {}

# https://github.com/darkside/capistrano-recipes.git
namespace :db do
  namespace :mysql do
    
    namespace :configure do
      desc "Generates a database.yml"
      task :local do
        db.mysql.setup.dev_db
        db.mysql.setup.prefix
        db.mysql.setup.user
        db.mysql.setup.password.assign.all
        db.mysql.setup.host
      
        db.mysql.setup.yaml.create.all
      end
      
      task :remote do
        
      end
      
    end
    
    namespace :setup do

      desc "|capistrano-recipes| Create MySQL database and user for this environment using prompted values"
      task :default, :roles => :db, :only => { :primary => true } do
        prepare_for_db_command

        sql = <<-SQL
        CREATE DATABASE #{db_name};
        GRANT ALL PRIVILEGES ON #{db_name}.* TO #{db_user}@localhost IDENTIFIED BY '#{db_pass}';
        SQL

        run "mysql --user=#{db_admin_user} -p --execute=\"#{sql}\"" do |channel, stream, data|
          if data =~ /^Enter password:/
            pass = Capistrano::CLI.password_prompt "Enter database password for '#{db_admin_user}':"
            channel.send_data "#{pass}\n" 
          end
        end
      end
      
      task :dev_db do
        set :dev_db_name, ''
        while dev_db_name == ''
          set :dev_db_name, Capistrano::CLI.ui.ask("DEVELOPMENT Database Name: ")
        end
      end
      
      task :prefix do
        set :db_prefix, Capistrano::CLI.ui.ask("Database Name Prefix: ") { |a| a.default = "#{application}_db" }
      end
      
      task :user do
        set :db_user, ''
        while db_user == '' || db_user.length > 13
          set :db_user, Capistrano::CLI.ui.ask("Username Prefix (limit 13 characters): ") { |a| a.default = "#{application[0..8]}_usr" }
        end
      end
      
      
      namespace :password do
        
        namespace :assign do
        
          task :default do
            db_passwords[stage] = Capistrano::CLI.ui.ask("#{stage.upcase} Database Password (leave blank for random password): ")
            if db_passwords[stage].nil? || db_passwords[stage] == ''
              p = ''
              db_passwords[stage] = 20.times.inject(p) {|r, i| p << rand(93)+33 }
            end
          end
          
          task :all do
            (['root'] + stages).each do |s|
              set :stage, s
              db.mysql.setup.password.assign.default
            end
          end
        end
      end
      
      task :host do
        set :db_host, Capistrano::CLI.ui.ask("Database Host IP: ") { |a| a.default = "127.0.0.1" }
      end
      
      
      

      namespace :yaml do
        namespace :create do
      
          desc "Create database.yml file"
          task :default do 
            db_config = %Q{
#{stage}:
  adapter: mysql2
  encoding: utf8
  reconnect: false
  database: #{db_prefix}_#{stage[0..1]}
  pool: 5
  username: #{db_user}_#{stage[0..1]}
  password: #{db_passwords[stage]}
  host: #{db_host}
            }
            `echo '#{db_config.gsub("'", "\'")}' >> #{rails_root}/config/database.yml`
            # File.open("#{rails_root}/config/database.yml", 'w') {|f| f.write(db_config) }
          end
        
          task :all do
            db_config = %Q{
development:
  adapter: mysql2
  encoding: utf8
  reconnect: false
  database: #{dev_db_name}
  pool: 5
  username: root
  password: 
  socket: /tmp/mysql.sock
          }
            `echo '#{db_config.gsub("'", "\'")}' >> #{rails_root}/config/database.yml`
            stages.each do |s|
              set :stage, s
              db.mysql.setup.yaml.create.default
            end
          end
        end
      end
      
    end





      
    task :startup, :roles => [:db] do
      sudo '/sbin/chkconfig mysql on'
      sudo '/sbin/service mysql start'
    end
      
    desc <<-EOF
    |capistrano-recipes| Performs a compressed database dump. \
    WARNING: This locks your tables for the duration of the mysqldump.
    Don't run it madly!
    EOF
    task :dump, :roles => :db, :only => { :primary => true } do
      prepare_from_yaml
      run "mysqldump --user=#{db_user} -p --host=#{db_host} #{db_name} | bzip2 -z9 > #{db_remote_file}" do |ch, stream, out|
      ch.send_data "#{db_pass}\n" if out =~ /^Enter password:/
        puts out
      end
    end

    desc "|capistrano-recipes| Restores the database from the latest compressed dump"
    task :restore, :roles => :db, :only => { :primary => true } do
      prepare_from_yaml
      run "bzcat #{db_remote_file} | mysql --user=#{db_user} -p --host=#{db_host} #{db_name}" do |ch, stream, out|
      ch.send_data "#{db_pass}\n" if out =~ /^Enter password:/
        puts out
      end
    end

    desc "|capistrano-recipes| Downloads the compressed database dump to this machine"
    task :fetch_dump, :roles => :db, :only => { :primary => true } do
      prepare_from_yaml
      download db_remote_file, db_local_file, :via => :scp
    end
  
    # Sets database variables from remote database.yaml
    def prepare_from_yaml
      set(:db_file) { "#{application}-dump.sql.bz2" }
      set(:db_remote_file) { "#{shared_path}/backup/#{db_file}" }
      set(:db_local_file)  { "tmp/#{db_file}" }
      set(:db_user) { db_config[rails_env]["username"] }
      set(:db_pass) { db_config[rails_env]["password"] }
      set(:db_host) { db_config[rails_env]["host"] }
      set(:db_name) { db_config[rails_env]["database"] }
    end
    
    def db_config
      @db_config ||= fetch_db_config
    end

    def fetch_db_config
      require 'yaml'
      file = capture "cat #{shared_path}/config/database.yml"
      db_config = YAML.load(file)
    end
  end
  
  def prepare_for_db_command
    set :db_name, "#{application}_#{environment}"
    set(:db_admin_user) { Capistrano::CLI.ui.ask "Username with priviledged database access (to create db):" }
    set(:db_user) { Capistrano::CLI.ui.ask "Enter #{environment} database username:" }
    set(:db_pass) { Capistrano::CLI.password_prompt "Enter #{environment} database password:" }
  end

  desc "Populates the database with seed data"
  task :seed do
    Capistrano::CLI.ui.say "Populating the database..."
    run "cd #{current_path}; rake RAILS_ENV=#{variables[:rails_env]} db:seed"
  end
  
end