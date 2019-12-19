Rails.application.routes.draw do
  resources :questions
  resources :pages
  resources :traffics
  resources :users
  resources :login, only: [:create]
end
