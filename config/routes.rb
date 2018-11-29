Rails.application.routes.draw do
  root 'home#index'
  resources :cars, only: [:new, :create, :index]
  resources :subscriptions, only: [:create]
end
