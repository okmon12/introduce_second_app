Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :create, :new] 
  resources :comments, only: [:create]
  root to: 'users#index'
end
