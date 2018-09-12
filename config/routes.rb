# frozen_string_literal: true

# route config
Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  root "posts#index"
  get '/about', to: 'pages#about'
end
