class CreateTeamPlayerScores < ActiveRecord::Migration
  def change
    create_table :team_player_scores do |t|
      t.references :team, index: true, foreign_key: true
      t.references :player, index: true, foreign_key: true
      t.references :match, index: true, foreign_key: true
      t.string :score
      t.string :run
      t.string :wicket
      t.string :catch
      t.string :run_out
      t.string :stumpig

      t.timestamps null: false
    end
  end
end
