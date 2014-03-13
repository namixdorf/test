def set_roles
  role :web, web_server
  role :app, ((app_server.nil? || app_server.empty?) ? web_server : app_server)
  role :db, ((db_server.nil? || db_server.empty?) ? web_server : db_server)
end

namespace :capistrano do 
  desc "Configure deploy.rb for deployment"
  task :configure do
    capistrano.setup.application
    capistrano.setup.user
    capistrano.setup.repository
    capistrano.setup.servers
    capistrano.generate_recipe
  end
  
  namespace :setup do
    
    desc "Sets the 'application' variable"
    task :application do
      set :application, Capistrano::CLI.ui.ask("Application Name: ") { |a| a.default = "web" }
    end
    
    desc "Sets the 'user' variable"
    task :user do
      set :user, Capistrano::CLI.ui.ask("SSH User: ") { |a| a.default = "deploy" }
    end
    
    desc "Sets the 'repository' variable. NOTE: This will also create a 'local_repository' variable by default, for multiple app deployment"
    task :repository do 
      set :repository, Capistrano::CLI.ui.ask("Git Repository: ")
    end
    
    desc "Sets the server variable(s)"
    task :servers do
      Capistrano::CLI.ui.say "SERVER SPECS\nEnter IP or hostname."
      set :app_server, Capistrano::CLI.ui.ask("App server: ")
      set_roles
    end
  end
  
  desc "Uses the lib/capistrano/templates/deploy.rb template to generate a new deploy.rb file, OVERWRITING the old version"
  task :generate_recipe do 
    template = ''
    File.open("#{rails_root}/lib/capistrano/templates/deploy.rb", 'r') {|f| template = f.read }
    
    template.gsub!('APPLICATION', application)
    template.gsub!('USER', user)
    template.gsub!('LOCAL_REPOSITORY', repository)
    template.gsub!('REPOSITORY', repository.gsub('git@github.com', "github-#{application}"))
    
    # template.gsub!('WEB_SERVER', web_server)
    template.gsub!('APP_SERVER', app_server)
    
    File.open("#{rails_root}/config/deploy.rb", 'w') {|f| f.write(template) }
  end
end