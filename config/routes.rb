Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :groups, only: [:index, :show] do
    resources :membership, only: [:create]
    resources :posts, only: [:create]
  end

  resources :posts, only: [:destroy] do
    resources :comments, only: [:create]
    resources :bookmarks, only: [:create]
  end

  resources :comments, only: [:destroy]
end
