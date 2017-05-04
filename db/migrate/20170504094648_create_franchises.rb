class CreateFranchises < ActiveRecord::Migration
  def change
    create_table :franchises do |t|
    	t.string :name
    	t.string :owner_name
    	t.string :captain
    	t.float  :point
      t.timestamps null: false
    end
  end
end
