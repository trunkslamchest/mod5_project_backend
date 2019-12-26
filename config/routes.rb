Rails.application.routes.draw do
  resources :comments
  resources :votes
  resources :answers
  resources :questions
  resources :pages
  resources :traffics
  resources :users
  resources :login, only: [:create]
end
