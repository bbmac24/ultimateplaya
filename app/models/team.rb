class Team < ActiveRecord::Base

	# call Team.all_teams
	has_many :players
  belongs_to :user

end


