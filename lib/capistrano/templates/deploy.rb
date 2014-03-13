require "bundler/capistrano"
require 'capistrano/ext/multistage'

set :whenever_environment, defer { stage }
require "whenever/capistrano"

set :stages, %w(production staging)
set :default_stage, "staging"

set :application, "APPLICATION"
set :user, "USER"
set :use_sudo, false

set :repository,  "REPOSITORY"
set :local_repository, "LOCAL_REPOSITORY"
set :scm, "git"
set :branch, "master"

set(:deploy_to) { "/home/#{user}/#{application}/#{stage}" }
set(:rails_env) { stage }

# for server clusters
role :app, "APP_SERVER"
# role :db, "DB_SERVER", :primary => true

# If your site uses private submodules that need to be checked out, you need to set up the server with multiple deployment keys
# http://github.com/guides/multiple-github-accounts
# public-repository-path => server-specific-repository-path
# example:
# 'git@github.com:cohesivecc/acts-as-moderatable.git' => 'github-moderatable:cohesivecc/acts-as-moderatable.git'
set :git_submodules, {}


# callback chains
after 'deploy:setup', 'content:create'
after :deploy, 'deploy:cleanup'
after 'deploy:create_symlink', 'submodules:checkout', 'content:symlink'


namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end  
end

# Tasks for managing the shared assets that are preserved from one deployment to the next
# UGC directories basically
namespace :content do 
  # create shared content directory
  task :create, :roles => [:app], :except => {:no_release => true} do
    run "mkdir #{deploy_to}/shared/content"
  end
  
  task :symlink, :roles => [:app], :except => {:no_release => true} do 
    begin
      run "rm -rf #{release_path}/public/content"
      run "ln -s #{deploy_to}/shared/content #{release_path}/public/content"
    rescue RuntimeError => e
      puts "Problem symlinking shared folders: #{e}"
    end
  end
end

namespace :web do
  desc "Custom disable web task"
  task :disable, :roles => [:app], :except => {:no_release => true} do
    remote_path = "#{shared_path}/system/maintenance.html"
    on_rollback { run "rm #{remote_path}" }
    maintenance = File.read("./public/maintenance.html")              
    put maintenance, "#{remote_path}", :mode => 0644
  end
end
task :disable do web.disable; end

namespace :submodules do
  task :prep, :roles => :app do 
    git_submodules.each do |k, v| 
      run "sed -i 's/#{k.gsub('/', "\\\\/")}/#{v.gsub('/', "\\\\/")}/g' #{release_path}/.git/config"
      run "sed -i 's/#{k.gsub('/', "\\\\/")}/#{v.gsub('/', "\\\\/")}/g' #{release_path}/.gitmodules"
    end
  end
   
  task :init, :roles => :app do
    begin
      run "cd #{release_path} && git submodule init && git submodule sync"
    rescue RuntimeError => e
      puts "Problem with submodule init: #{e}"
    end
  end
  
  task :update, :roles => :app do 
    begin
      run "cd #{release_path} && git submodule update"
    rescue RuntimeError => e
      puts "Problem with submodule update: #{e}"
    end
  end
  
  task :checkout, :roles => :app do
    prep
    init
    update
  end
end
