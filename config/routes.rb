require 'sidekiq/web'

Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :categories
  resources :suppliers
  resources :customers
  resources :staffs
  resources :roles
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'products#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
