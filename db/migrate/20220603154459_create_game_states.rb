class CreateGameStates < ActiveRecord::Migration[7.0]
  def change
    create_table :game_states do |t|
      t.string :game_state
      t.timestamps
    end
  end
end
