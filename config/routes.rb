Iiiui::Application.routes.draw do

  resources :shares

  resources :photos

  resources :cart_items

  resources :carts

  resources :activities
  resources :notifications

  get "share" => "user_shares#new"
  resources :user_shares
  resources :user_likes
  resources :user_addresses
  resources :user_infos
  get 'tags/:tag', to: 'pages#index', as: :tag
  get 'tags', to: 'tags#index'
  resources :orders

  resources :trades do
    collection do
      get 'buys'
      get 'sells'
    end
  end

  resources :categories do
    collection do
      get 'autocomplate'
    end
  end

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
    resources :comments
    resources :user_shares
  end

  namespace :api do
    get "version" => "version#index"
    devise_scope :user do
      match 'users/sign_up' => 'registrations#create', :via=> :post
      match 'users/sign_in' => 'sessions#create', :via => :post
      match 'users/loginerror' => 'sessions#loginerror', :via =>:get
      match 'users/islogin' => 'users#islogin',:via=>:get
      match 'callback/weibo' => 'omniauth_callbacks#weibo',:via=>:get
    end
    resources :user_shares
  end

  resources :users

end
