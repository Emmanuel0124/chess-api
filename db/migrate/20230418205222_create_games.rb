class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :winner
      t.string :ending
      t.string :pgn
      t.string :pgn_image

      t.timestamps
    end
  end
end
