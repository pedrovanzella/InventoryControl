ActionController::Routing::Routes.draw do |map|
  map.resources :sales

  map.resources :customers

  map.resources :products

  map.resources :brands
  
  map.resources :purchases

  map.root :controller => "analyze_inventory"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  #map.connect 'special/:action/:id', :controller => 'special'
end

ActionController::Routing::Translator.i18n
