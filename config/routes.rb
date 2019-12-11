Rails.application.routes.draw do
  resources :cart_items
  resources :items
  resources :users, only: [:index, :show, :update, :create]
  resources :login, only: [:create]
end
