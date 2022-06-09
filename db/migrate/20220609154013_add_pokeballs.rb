class AddPokeballs < ActiveRecord::Migration[7.0]
  def change
    add_column :masters, :pokeballs, :string
  end
end
