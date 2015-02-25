# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@teams_list = HTTParty.get("http://api.sportsdatallc.org/nba-t3/league/hierarchy.json?api_key=#{ENV['API_KEY']}")

@conf = @teams_list.parsed_response['conferences']

@conf.each do |conf|
	conf['divisions'].each do |division|
		division['teams'].each do |team|
			Team.create(name: team['name'], team_id: team['id'])
		end 
	end


	

end 