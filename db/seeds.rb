# This is to get teams data
@teams_list = HTTParty.get("http://api.sportsdatallc.org/nba-t3/league/hierarchy.json?api_key=#{ENV['API_KEY']}")

@conf = @teams_list.parsed_response['conferences']

@conf.each do |conf|
	conf['divisions'].each do |division|
		division['teams'].each do |team|
			Team.create(name: team['name'], team_id: team['id'])
		end 
	end
end 



# p Team.all.count

#to loop the information
Team.all.each do |team|

	team_data = HTTParty.get("http://api.sportsdatallc.org/nba-t3/teams/#{team.team_id}/profile.json?api_key=#{ENV['API_KEY']}")

	if team_data['players']
		team_data['players'].each do |player|
		  Player.create(player_name: player['full_name'], player_position: player['primary_position'], team: team)
		end
	end
end 