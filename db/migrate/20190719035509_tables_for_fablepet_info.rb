class TablesForFablepetInfo < ActiveRecord::Migration
  def change
  	create_table :fablepet_colors do |t|
  		t.string :name
  		t.boolean :is_basic, null: false, default: false
  	end

  	create_table :fablepet_species do |t|
  		t.string :name
  		t.boolean :is_basic, null: false, default: false
  	end

  	create_table :fablepet_patterns do |t|
  		t.string :name
  		t.boolean :has_tertiary, null: false, default: false
  	end

  	create_table :elements do |t|
  		t.string :name
  		t.boolean :is_basic, null: false, default: false
  	end
  end
end