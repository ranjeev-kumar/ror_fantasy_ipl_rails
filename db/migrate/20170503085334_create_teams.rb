class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :owner
      t.string :home_ground
      t.string :captain
      t.string :coach
      t.string :official_team_site
      t.string :rank
      t.float :point

      t.timestamps null: false
    end
  end
end
