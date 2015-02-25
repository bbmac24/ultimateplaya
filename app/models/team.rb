class Team < ActiveRecord::Base

	# call Team.all_teams
	def self.all_teams

		teams = []

		teams.push({name: "Bulls", id: "123123-12312312-123123"})

		return teams
	end

end


