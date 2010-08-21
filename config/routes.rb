InventoryControl::Application.routes.draw do
  resources :sales
  resources :customers
  resources :products
  resources :brands
  resources :purchases
  match '/:controller(/:action(/:id))'
end

