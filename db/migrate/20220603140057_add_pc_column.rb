class AddPcColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :masters, :pc, :text, default: [].to_yaml, array: true
  end
end
