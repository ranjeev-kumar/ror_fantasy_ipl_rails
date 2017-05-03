class CreateUserTeams < ActiveRecord::Migration
  def change
    create_table :user_teams do |t|
      t.references :user, index: true, foreign_key: true
      t.hstore :player
      t.string :power_player
      t.references :match, index: true, foreign_key: true
      t.float :total_score
      t.string :rank

      t.timestamps null: false
    end
  end
end
