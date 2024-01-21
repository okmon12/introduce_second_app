Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :create, :new] do
    resources :comments
  end
  root to: 'users#index'
end
