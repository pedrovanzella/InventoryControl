#Application
set :application, "inventorycontrol"
set :deploy_to, "/var/www/#{application}"

#Settings
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :use_sudo, true


#Server
set :user, "root"
#set :domain, "127.0.0.1"
set :domain, "192.168.0.2"
server domain, :app, :web
#role :app, "#{application}"
#role :web, "#{application}"
role :db, domain, :primary => true

#Git
set :scm, :git
set :repository, "git@github.com:brunoarueira/InventoryControl.git"
set :scm_verbose, true
set :branch, "master"

#Passenger
namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end
