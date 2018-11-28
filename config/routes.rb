Rails.application.routes.draw do
  root 'home#index'
  resources :cars, only: [:new, :create, :index]
end
