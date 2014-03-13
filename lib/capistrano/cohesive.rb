set :rails_root, "#{File.dirname(__FILE__)}/../.."
set :stages, %w(production staging)

namespace :cohesive do
  desc "Configure cap, mysql, apache, ssh, server ..."
  task :configure do
    Capistrano::CLI.ui.say "Configuring necessary deployment files."
    capistrano.configure
    db.mysql.configure.local
    # apache.configure.local
    ssh.configure.local
    Capistrano::CLI.ui.say "Beginning server configuration."
    ssh.configure.remote
    # apache.configure.remote
    
    # db.mysql.configure.remote
    # sudo /sbin/chkconfig mysql on
    # sudo /sbin/service mysql start
    # /usr/bin/mysql_secure_installation
    
    # environment:
    # sudo /usr/sbin/usermod -a -G rvm deploy
    # bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)
    # rvm reload
    # rvm install 1.9.2
    # rvm use 1.9.2 --default
    # gem install passenger
    # rvmsudo passenger-install-apache2-module
    # put passenger.conf in /etc/httpd/conf.d/vhosts/.
    
    # sudo /sbin/chkconfig --level 345 httpd on
    
    # gem install whenever !!! bundle install will not install this in system gems
    # echo 'rvm_trust_rvmrcs_flag=1' >> ~/.rvmrc !!! psuedocode - only necessary with RVM to ensure that whenver gem cron tasks work
    
    # deploy.setup
    # apache.restart
  end
end