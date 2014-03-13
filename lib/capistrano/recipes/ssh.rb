namespace :ssh do
  
  namespace :configure do 
    task :local do
      ssh.setup.local
      ssh.config.local
    end
    task :remote, :roles => [:web, :app, :db] do
      ssh.setup.remote
      ssh.keys.authorize
      ssh.keys.deploy
      ssh.config.remote
    end
  end  
  
  
  namespace :setup do
    task :local do 
      `mkdir -p -m 700 ~/.ssh`
      `touch ~/.ssh/config && chmod 600 ~/.ssh/config`
      if local_key == ''
        `ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa`
      end
    end
    
    task :remote, :roles => [:web, :app, :db] do 
      run "mkdir -p -m 700 /home/#{user}/.ssh"
      run "touch /home/#{user}/.ssh/authorized_keys && chmod 644 /home/#{user}/.ssh/authorized_keys"
      run "touch /home/#{user}/.ssh/config && chmod 600 /home/#{user}/.ssh/config"
    end
  end
  
  
  
  namespace :keys do    
    task :authorize, :roles => [:web, :app, :db] do
      run "echo '#{local_key}' >> /home/#{user}/.ssh/authorized_keys"
    end
    
    task :deploy, :roles => [:web, :app, :db] do
      run "ssh-keygen -t rsa -N '' -f /home/#{user}/.ssh/id_rsa_#{application}"
      Capistrano::CLI.ui.say %Q{Copy this deploy key to the Github repository:\n\nECHO DEPLOY KEY HERE}
    end
  end
  
  
  
  namespace :config do
    task :local do
      short_name = Capistrano::CLI.ui.ask("Desired SSH Alias: ")
      unless short_name.nil? || short_name == ''
        config = ssh_config(:host => short_name, :host_name => web_server, :user => user)
      end
      `echo #{config} >> ~/.ssh/config`
    end
    
    task :remote, :roles => [:web, :app, :db] do
      config = ssh_config(:host => "github-#{application}", :host_name => "github.com", :user => 'git', :identity_file => "/home/#{user}/.ssh/id_rsa_#{application}")
      run "echo #{config} >> /home/#{user}/.ssh/config"
    end
  end  
  
  
  
  def local_key
    `cat ~/.ssh/id_rsa.pub`
  end
  
  def ssh_config(options={})
    config = %Q{"
Host #{options[:host]}
  HostName #{options[:host_name]}
  User #{options[:user]}
"}
    config += "IdentityFile #{options[:identity_file]}\n" if options[:identity_file]
    config
  end
end