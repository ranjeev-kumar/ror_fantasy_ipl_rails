class UserTeam < ActiveRecord::Base
  belongs_to :user
  belongs_to :match
  belongs_to :player
end
