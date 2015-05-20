Rails.application.routes.draw do 

  root to: 'users#index', via: :get
  get 'auth/facebook', as: "auth_provider"
 get 'auth/facebook/callback', to: 'users#login'
  get '/auth/twitter', to: 'sessions#create'
  get '/auth/twitter/callback', to: 'users#update'
  post 'auth/facebook/callback', to: 'users#login'
 # match 'auth/facebook/callback',to: 'users#login', via: [:get, :post]
 get '/linkedin/auth'      => 'linkedin#auth'
get '/linkedin/callback'  => 'linkedin#callback'
        get 'instagram/index' => "instagram#index"
end
