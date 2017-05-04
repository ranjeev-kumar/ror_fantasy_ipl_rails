class AddFranchiseToPlayerTable < ActiveRecord::Migration
  def change
  	add_reference :players, :franchise, index: true
  end
end
