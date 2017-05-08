class ModifyUserTeamsTable < ActiveRecord::Migration
  def change
  	remove_column :user_teams, :rank
  	remove_column :user_teams, :player
  	remove_column :user_teams, :power_player
  	add_column :user_teams, :power_player, :boolean, :default => false
  	add_reference :user_teams, :player, index: true
  	add_column :user_teams, :bowling_point, :integer
  	add_column :user_teams, :batting_point, :integer
  	add_column :user_teams, :fielding_point, :integer
  end
end
