Iiiui::Application.routes.draw do
  get "dashboard" => "dashboard#index"

  # resources :pages

  # resources :items

  authenticated :user do
    root :to => 'pages#index'
  end
  root :to => "pages#index"
  devise_for :users
  # resources :users, :only => [:show, :index]

  namespace :admin do
    get "dashboard" => "dashboard#index"
  end
end
