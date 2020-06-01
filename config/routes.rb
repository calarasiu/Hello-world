Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :groups, only: [:index, :show] do
    resources :membership, only: [:create]
    resources :posts, only: [:create, :show]
  end

  resources :posts, only: [:destroy] do
    resources :comments, only: [:create]
    resources :bookmarks, only: [:create]
    resources :upvotes, only: [:create]
  end
  resources :bookmarks, only: [:index]
  resources :comments, only: [:destroy]
  resources :posts, only: [:index]
  resources :notifications, only: [:index]
end
