class AddParty < ActiveRecord::Migration[7.0]
  def change
    add_column :masters, :poke_party, :text, default: [].to_yaml, array: true
    # serialize :masters, Array
  end
  # add_index :masters, :party, using: 'gin'
end
