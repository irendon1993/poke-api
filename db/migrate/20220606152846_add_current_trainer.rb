class AddCurrentTrainer < ActiveRecord::Migration[7.0]
  def change
    add_column :game2s, :active_trainer, :string 
  end
end
