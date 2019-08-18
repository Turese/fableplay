class AddItem < ActiveRecord::Migration
  def change
  	create_table :item_profiles do |t|
  		t.string :name, null: false
  		t.integer :kind, null: false, default: 0
  		t.integer :rarity, null: false, default: 100
  		t.string :flavor_text, null: false
  	end
  	create_table :items do |t|
  		t.string :username, null: false
  		t.integer :item_id, null: false
  	end
  end
end
