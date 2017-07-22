Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :books
  root 'books#index'
end
