class ModifyFranchisesTable < ActiveRecord::Migration
  def change
  	add_column :franchises, :ranking, :integer
  end
end
