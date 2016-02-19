Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'homes#index'
  resources :users
  resources :jotters
end
