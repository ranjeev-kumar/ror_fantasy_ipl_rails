class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :team1_id
      t.string :team2_id
      t.date :match_date
      t.datetime :start_time
      t.datetime :end_time
      t.string :team1_score
      t.string :team2_score
      t.string :winner
      t.string :match_result

      t.timestamps null: false
    end
  end
end
