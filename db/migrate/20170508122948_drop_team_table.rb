class DropTeamTable < ActiveRecord::Migration
  def change
  	remove_column :team_player_scores, :team_id
  	drop_table :teams
  end
end
