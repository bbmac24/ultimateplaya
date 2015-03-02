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


Team.find_by(name: "Heat").update_attributes(image_url:"http://upload.wikimedia.org/wikipedia/en/thumb/f/fb/Miami_Heat_logo.svg/741px-Miami_Heat_logo.svg.png")
Team.find_by(name: "Hawks").update_attributes(image_url:"http://s7d2.scene7.com/is/image/Fathead/lgo_nba_atlanta_hawks?layer=comp&fit=constrain&hei=310&wid=310&fmt=png-alpha&qlt=75,0&op_sharpen=1&resMode=bicub&op_usm=0.0,0.0,0,0&iccEmbed=0")
Team.find_by(name: "Lakers").update_attributes(image_url:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/lal.png")
Team.find_by(name: "Clippers").update_attributes(image_url:"http://s7d2.scene7.com/is/image/Fathead/lgo_nba_los_angeles_clippers?layer=comp&fit=constrain&hei=310&wid=310&fmt=png-alpha&qlt=75,0&op_sharpen=1&resMode=bicub&op_usm=0.0,0.0,0,0&iccEmbed=0")
Team.find_by(name: "Warriors").update_attributes(image_url:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/gsw.png")
Team.find_by(name: "Suns").update_attributes(image_url:"http://apps.yinzcam.com/images/nba_phx_logo.png")

Team.find_by(name: "Kings").update_attributes(image_url:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/sac.png")
Team.find_by(name: "Hornets").update_attributes(image_url:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/cha.png")
Team.find_by(name: "Mavericks").update_attributes(image_url:"http://upload.wikimedia.org/wikipedia/en/thumb/9/97/Dallas_Mavericks_logo.svg/1028px-Dallas_Mavericks_logo.svg.png")
Team.find_by(name: "Spurs").update_attributes(image_url:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/sas.png")
Team.find_by(name: "Pelicans").update_attributes(image_url:"http://upload.wikimedia.org/wikipedia/en/2/21/New_Orleans_Pelicans.png")
Team.find_by(name: "Rockets").update_attributes(image_url:"http://s7d2.scene7.com/is/image/Fathead/lgo_nba_houston_rockets?layer=comp&fit=constrain&hei=310&wid=310&fmt=png-alpha&qlt=75,0&op_sharpen=1&resMode=bicub&op_usm=0.0,0.0,0,0&iccEmbed=0")
Team.find_by(name: "Grizzlies").update_attributes(image_url:"http://images.rotoinfoinc.netdna-cdn.com/sports/nba/logo/MemphisGrizzlies_logo.png")

Team.find_by(name: "Nuggets").update_attributes(image_url:"http://s7d2.scene7.com/is/image/Fathead/lgo_nba_denver_nuggets?layer=comp&fit=constrain&hei=310&wid=310&fmt=png-alpha&qlt=75,0&op_sharpen=1&resMode=bicub&op_usm=0.0,0.0,0,0&iccEmbed=0")
Team.find_by(name: "Trail Blazers").update_attributes(image_url:"http://static.giantbomb.com/uploads/original/2/23637/1369193-portland.png")
Team.find_by(name: "Thunder").update_attributes(image_url:"http://s7d2.scene7.com/is/image/Fathead/lgo_nba_oklahoma_city_thunder?layer=comp&fit=constrain&hei=265&wid=265&fmt=png-alpha&qlt=75,0&op_sharpen=1&resMode=bicub&op_usm=0.0,0.0,0,0&iccEmbed=0")
Team.find_by(name: "Jazz").update_attributes(image_url:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/uta.png")
Team.find_by(name: "Timberwolves").update_attributes(image_url:"http://s7d2.scene7.com/is/image/Fathead/lgo_nba_minnesota_timberwolves?layer=comp&fit=constrain&hei=275&wid=275&fmt=png-alpha&qlt=75,0&op_sharpen=1&resMode=bicub&op_usm=0.0,0.0,0,0&iccEmbed=0")
Team.find_by(name: "Bucks").update_attributes(image_url:"http://upload.wikimedia.org/wikipedia/en/thumb/2/20/Milwaukee_Bucks.svg/749px-Milwaukee_Bucks.svg.png")
Team.find_by(name: "Pistons").update_attributes(image_url:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/det.png")


Team.find_by(name: "Pacers").update_attributes(image_url:"http://upload.wikimedia.org/wikipedia/en/thumb/d/d0/Indiana_Pacers_1990.svg/1237px-Indiana_Pacers_1990.svg.png")
Team.find_by(name: "Cavaliers").update_attributes(image_url:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/logos/teamlogos_500x500/cle.png")
Team.find_by(name: "Bulls").update_attributes(image_url:"http://s7d2.scene7.com/is/image/Fathead/lgo_nba_chicago_bulls?layer=comp&fit=constrain&hei=310&wid=310&fmt=png-alpha&qlt=75,0&op_sharpen=1&resMode=bicub&op_usm=0.0,0.0,0,0&iccEmbed=0")
Team.find_by(name: "Raptors").update_attributes(image_url:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/tor.png")
Team.find_by(name: "Celtics").update_attributes(image_url:"http://upload.wikimedia.org/wikipedia/en/thumb/8/8f/Boston_Celtics.svg/1024px-Boston_Celtics.svg.png")

Team.find_by(name: "Nets").update_attributes(image_url:"http://s7d2.scene7.com/is/image/Fathead/lgo_nba_brooklyn_nets?layer=comp&fit=constrain&hei=310&wid=310&fmt=png-alpha&qlt=75,0&op_sharpen=1&resMode=bicub&op_usm=0.0,0.0,0,0&iccEmbed=0")
Team.find_by(name: "76ers").update_attributes(image_url:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/teamsites/logos/teamlogos_500x500/phi.png")
Team.find_by(name: "Knicks").update_attributes(image_url:"http://s7d2.scene7.com/is/image/Fathead/lgo_nba_new_york_knicks?layer=comp&fit=constrain&hei=350&wid=350&fmt=png-alpha&qlt=75,0&op_sharpen=1&resMode=bicub&op_usm=0.0,0.0,0,0&iccEmbed=0")
Team.find_by(name: "Magic").update_attributes(image_url:"http://vignette3.wikia.nocookie.net/nba/images/1/13/OrlandoMagicLogo.png/revision/latest?cb=20140207173420")
Team.find_by(name: "Wizards").update_attributes(image_url:"http://upload.wikimedia.org/wikipedia/en/thumb/b/bd/Washington_Wizards_Logo.svg/1111px-Washington_Wizards_Logo.svg.png")

#players
Player.find_by(player_name: "Elton Brand").update_attributes(players_image:"http://img.bleacherreport.net/img/images/photos/002/919/767/hi-res-4a43670ca4dbd1f6ed190cd6aeca93bb_crop_north.jpg?w=630&h=420&q=75")
Player.find_by(player_name: "Paul Millsap").update_attributes(players_image:"http://static.foxsports.com/content/fscom/img/2013/12/31/123113-NBA-Hawks-Paul-Millsap-PI-CH_20131231163718924_660_320.JPG")
Player.find_by(player_name: "Jeff Teague").update_attributes(players_image:"http://cdn.fansided.com/wp-content/blogs.dir/229/files/2014/01/8084690.jpg")
Player.find_by(player_name: "Al Horford").update_attributes(players_image:"http://i.cdn.turner.com/nba/nba/.element/img/1.0/sect/allstar/profiles/al_horford_300.jpg")
Player.find_by(player_name: "Kyle Korver").update_attributes(players_image:"http://www.picpicx.com/wp-content/uploads/2014/10/c762227223b94095dd3a2a7fcec12fff.jpg")
Player.find_by(player_name: "Thabo Sefolosha").update_attributes(players_image:"http://cache2.asset-cache.net/gc/456460224-thabo-sefolosha-of-the-atlanta-hawks-poses-gettyimages.jpg?v=1&c=IWSAsset&k=2&d=GkZZ8bf5zL1ZiijUmxa7QWp4rzIamDwYvIcbxUQVBr8E6o3n71aIi%2FfxDOqteqfFjZKhqIf6%2BbEqTjgRSBqk3ZK9IFBhVuLjFPm6gQUzYXSrip9iK8lEyUa7er9uBTBS")





