# frozen_string_literal: true

# route config
Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  root "posts#index"
end
