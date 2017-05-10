class ChangeDataTypeOfTeamInMatchTable < ActiveRecord::Migration
  def change
  	remove_column :matches, :mathch_player
  	remove_column :matches, :team1_id
  	remove_column :matches, :team2_id
  	add_column :matches, :team1_id, :integer
  	add_column :matches, :team2_id, :integer
  	add_column :matches, :match_player, :integer
  end
end
