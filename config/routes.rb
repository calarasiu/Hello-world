Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :groups, only: [:index, :show] do
    resources :membership, only: [:create]
    resources :posts, only: [:create] do
      resources :comments, only: [:create]
      resources :bookmarks, only: [:create]
    end
  end
  resources :posts, only: [:destroy]
  resources :comments, only: [:destroy]
end
