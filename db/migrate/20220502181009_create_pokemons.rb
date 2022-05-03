class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :pokeid
      t.string :name
      t.string :iamgeurl
      t.string :type

      t.timestamps
    end
  end
end
