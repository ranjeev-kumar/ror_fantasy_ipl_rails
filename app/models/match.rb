class Match < ActiveRecord::Base
	belongs_to :team1, :class_name => 'Franchise', :foreign_key => 'team1_id'
  belongs_to :team2, :class_name => 'Franchise', :foreign_key => 'team2_id'
  belongs_to :player, :class_name => 'Player', :foreign_key => 'match_player'
	has_many :user_teams
	has_many :score_cards
end
