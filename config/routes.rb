Rails.application.routes.draw do

	root 'home#index'

	get "/api/teams" => 'data#teams' 
	get "/api/roster" => 'data#roster' 
  get "/api/player" => 'data#player'

  get "/signup" => 'users#new', as: :signup  
  # resources :users
  post '/users' => 'users#create', as: :users
  post '/login' => 'sessions#create', as: :login
  get "/logout" => 'sessions#destroy', as: :logout


end
