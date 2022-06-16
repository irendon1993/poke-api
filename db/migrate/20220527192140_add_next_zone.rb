class AddNextZone < ActiveRecord::Migration[7.0]
  def change
    add_column :zones, :next_zone, :json, default: []
  end
end
