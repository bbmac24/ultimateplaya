class DataController < ApplicationController

  def teams
  	teams = Team.all 
  	render json: teams
  	
  end

  def roster
  	team_id = params[:team_id]
  	team = Team.find(team_id)
    puts team.players
  	render json: team.players

  end

  def player
    player_id = params[:id]
    player = Player.find(player_id)

    render json: player, include: :team
  
  end 


end
