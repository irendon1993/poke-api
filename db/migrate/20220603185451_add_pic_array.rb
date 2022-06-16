class AddPicArray < ActiveRecord::Migration[7.0]
  def change
    add_column :masters, :pic_array, :json, default: []
  end
end
