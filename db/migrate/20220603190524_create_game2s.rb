class CreateGame2s < ActiveRecord::Migration[7.0]
  def change
    create_table :game2s do |t|
      t.string :game_state

      t.timestamps
    end
  end
end
