class Franchise < ActiveRecord::Base
	has_many :players
	has_many :team1, :class_name => 'Match', :foreign_key => 'team1_id'
  has_many :team2, :class_name => 'Match', :foreign_key => 'team2_id'
end
