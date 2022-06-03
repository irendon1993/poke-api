class AddCurrentPokemon < ActiveRecord::Migration[7.0]
  def change
    add_column :masters, :current_pokemon, :string
  end
end
