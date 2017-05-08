class ModifyUsersTable < ActiveRecord::Migration
  def change
  	add_column :users, :display_name, :string
  	add_column :users, :team_name, :string
  	add_column :users, :total_point, :integer
  	add_column :users, :ranking, :integer
  	
  end
end
