ActionController::Routing::Routes.draw do |map|
  map.resources :sales

  map.resources :customers

  map.resources :products

  map.resources :brands
  
  map.resources :purchases

  #map.controller :analyze_inventory

  map.root :controller => "analyze_inventory"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

ActionController::Routing::Translator.i18n
