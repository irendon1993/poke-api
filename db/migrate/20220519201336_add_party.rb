class AddParty < ActiveRecord::Migration[7.0]
  def change
    add_column :masters, :poke_party, :json, default: []
  end
end
