Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"
  root "users#login"
  get "/login" => "users#login"
  get "/logout" => "users#logout"
  resources :users
  
  get "/search" => "products#index"
  resources :products 
end
