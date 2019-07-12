Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get 'user/new'
  # get 'static_pages/home'
  root 'static_pages#home'
  get '/coffee', to: 'static_pages#coffee'
  get '/about', to:  'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/static_pages/home', to: 'static_pages#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  default_url_options :host => "localhost:3000"
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]

end