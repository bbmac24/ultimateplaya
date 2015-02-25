class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  team = Team.all

	#sub Lakers with user data  (params(look for params here))
	team_id = team.where(name: "Lakers")
	team_id_inner = team_id[0]
	team_id_under = team_id_inner.team_id
	

@players_list = HTTParty.get("http://api.sportsdatallc.org/nba-t3/teams/" + team_id_under + "/profile.json?api_key=waaz9qw5jzk2j7ab8p5vg6ge")

  player_id = @players_list['players'][0].where(full_name: )
  raise player_id.inspect




end
