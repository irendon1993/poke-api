class AddAreaDescription < ActiveRecord::Migration[7.0]
  def change
    add_column :zones, :zone_description, :string 
  end
end
