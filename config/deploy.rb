set :application, "inventorycontrol"
set :repository, "http://github.com/brunoarueira/InventoryControl.git"
set :deploy_to, "/#{application}"

set :user, "bruno"

role :app, "servidorapp"  
role :web, "servidorapp"  
role :db,  "servidorapp", :primary => true  
