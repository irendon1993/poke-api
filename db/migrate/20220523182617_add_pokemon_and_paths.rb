class AddPokemonAndPaths < ActiveRecord::Migration[7.0]
  def change
    add_column :zones, :wild_pokemon, :json, default: []
    add_column :zones, :directions, :json, default: []
  end
end
