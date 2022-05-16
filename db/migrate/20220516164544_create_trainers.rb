class CreateTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :trainers do |t|
      t.string :username, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
