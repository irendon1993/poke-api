class AddTrainerZone < ActiveRecord::Migration[7.0]
  def change
    add_column :masters, :currentZone, :string
  end
end
