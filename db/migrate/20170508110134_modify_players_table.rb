class ModifyPlayersTable < ActiveRecord::Migration
  def change
  	remove_column :players, :type
  	remove_column :players, :point
  	remove_reference :players, :team
  	add_column :players, :role, :string
  	add_column :players, :capped, :boolean, :default => true
  	add_column :players, :indian, :boolean, :default => false
  end
end
