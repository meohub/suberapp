Rails.application.routes.draw do
  resources :workshops

  resources :workshops
  resources :contacts

  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
