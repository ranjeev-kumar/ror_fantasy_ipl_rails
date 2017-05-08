class DropTeamPlayerScoreTable < ActiveRecord::Migration
  def change
  	drop_table :team_player_scores
  end
end
