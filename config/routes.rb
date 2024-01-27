Rails.application.routes.draw do
  devise_for :users 
  resources :comments, only: [:index, :create, :new, :show] 
  root to: 'comments#index'
end
