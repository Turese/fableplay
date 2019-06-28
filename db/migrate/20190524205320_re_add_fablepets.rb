class ReAddFablepets < ActiveRecord::Migration
  def change
  	create_table :fablepets, id: false  do |t|
  	  t.string :unique_name, null: false
      t.string :name
      t.integer :species
      t.string :pattern
      t.string :colors
      t.string :curr_colors
      t.string :elements
      t.string :curr_elements
      t.timestamps null: false

      t.integer :level
      t.integer :hp
      t.integer :curr_hp
      t.integer :attack
      t.integer :defense
      t.integer :magic_attack
      t.integer :magic_defense
      t.integer :mp
      t.integer :curr_mp
      t.integer :charisma
      t.integer :agility
      t.integer :speed

    end
    add_index :fablepets, :unique_name, unique: true
  end
end
