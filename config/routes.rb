Rails.application.routes.draw do

	root 'home#index'

	get "/api/teams" => 'data#teams' 
	get "/api/roster" => 'data#roster' 
  get "/api/player" => 'data#player'

  get "/signup" => 'users#new', as: :signup  
  post '/signup' => 'users#create'
  # post '/signup' => 'users@create'
  # resources :users
  # post '/users' => 'users#create', as: :users
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  get "/logout" => 'sessions#destroy', as: :logout


end
