Rails.application.routes.draw do

	root 'home#index'

	get "/api/teams" => 'data#teams' 
	get "/api/roster" => 'data#roster' 
  get "/api/player" => 'data#player'

end
