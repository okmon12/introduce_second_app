Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :create, :new] 
  root to: 'users#index'
end
