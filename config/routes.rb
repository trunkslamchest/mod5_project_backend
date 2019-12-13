Rails.application.routes.draw do
  resources :traffics
  resources :users
  resources :login, only: [:create]
end
