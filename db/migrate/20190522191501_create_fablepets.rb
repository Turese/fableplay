class CreateFablepets < ActiveRecord::Migration
  def change
    create_table :fablepets do |t|
      t.string :name
      t.string :unique_id
      t.integer :species
      t.string :pattern
      t.string :colors

      t.timestamps null: false
    end
  end
end
