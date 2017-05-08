class ModifyMatchesTable < ActiveRecord::Migration
  def change
  	remove_column :matches, :winner
  	add_column :matches, :winner, :integer
  	add_column :matches, :team1_over, :float
  	add_column :matches, :team2_over, :float
  	add_column :matches, :mathch_player, :integer
  	add_column :matches, :toss, :string
  end
end
