class CreateScoreCards < ActiveRecord::Migration
  def change
    create_table :score_cards do |t|
    	t.integer  :run_scored
    	t.integer  :ball_played
    	t.integer  :four
    	t.integer  :six
    	t.integer  :over
    	t.integer  :maiden
    	t.integer  :run_given
    	t.integer  :wicket
    	t.integer  :catch
    	t.integer  :run_out
    	t.integer  :stump
    	t.references :player, index: true, foreign_key: true
    	t.references :match, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
