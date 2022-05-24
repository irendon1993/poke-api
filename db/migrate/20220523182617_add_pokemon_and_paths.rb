class AddPokemonAndPaths < ActiveRecord::Migration[7.0]
  def change
    add_column :zones, :wild_pokemon, :text, default: [].to_yaml, array: true
    add_column :zones, :directions, :text, default: [].to_yaml, array: true
  end
end
