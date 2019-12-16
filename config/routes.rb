Rails.application.routes.draw do
  resources :pages
  resources :traffics
  resources :users
  resources :login, only: [:create]
end
