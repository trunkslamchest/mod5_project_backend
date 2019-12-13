Rails.application.routes.draw do
  resources :cart_items
  resources :items
  resources :users
  resources :login, only: [:create]
end
