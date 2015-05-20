TwitterExample::Application.routes.draw do
  #root to: 'users#index', via: :get
  get 'auth/facebook', as: "auth_provider"
  get 'auth/facebook/callback', to: 'users#login'
  post 'auth/facebook/callback', to: 'users#login'
  # match 'auth/facebook/callback',to: 'users#login', via: [:get, :post]
  get '/linkedin/auth'      => 'linkedin#auth'
  get '/linkedin/callback'  => 'linkedin#callback'
  get 'instagram/index' => "instagram#index"

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :tweets, only: [:new, :create]
  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#show"
end
