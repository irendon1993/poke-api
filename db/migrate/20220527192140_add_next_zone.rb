class AddNextZone < ActiveRecord::Migration[7.0]
  def change
    add_column :zones, :next_zone, :text, default: [].to_yaml, array: true
  end
end
