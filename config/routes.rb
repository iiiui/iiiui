Iiiui::Application.routes.draw do

  resources :cart_items

  resources :carts

  resources :activities
  resources :notifications

  get "share" => "user_shares#new"
  resources :user_shares
  resources :user_likes
  resources :user_addresses
  resources :user_infos

  resources :orders

  resources :trades do
    collection do
      get 'buys'
      get 'sells'
    end
  end

  resources :categories
  resources :tags
  resources :comments
  resources :pages
  resources :items

  get "dashboard" => "dashboard#index"
  authenticated :user do
    root :to => 'pages#index'
  end
  root :to => "pages#index"
  devise_for :users

  namespace :admin do
    get "dashboard" => "dashboard#index"
    resources :items
    resources :pages
    resources :users
    resources :orders
    resources :trades
    resources :categories
    resources :tags
    resources :comments
  end

  namespace :api do
    get "version" => "version#index"
  end

  resources :users

end
