#Application
set :application, "inventorycontrol"
set :deploy_to, "/var/www/#{application}"

#Settings
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
#set :use_sudo, true


#Server
set :user, "root"
set :domain, "192.168.0.2"
server domain, :app, :web
role :db, domain, :primary => true

#Git
set :scm, :git
set :repository, "git@github.com:brunoarueira/InventoryControl.git"
set :scm_verbose, true
set :branch, "master"

#Passenger
namespace :passenger do
  desc "Restart Application"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

after :deploy, "passenger:restart"
