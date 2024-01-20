Rails.application.routes.draw do
  devise_for :users
  resources :users
  # resources :comments, only: [:new, :create, :index, :show]
  root to: 'users#index'
end
