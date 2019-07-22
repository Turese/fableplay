class ArraysForFablepetColorsAndElements < ActiveRecord::Migration
  def change
  	add_column :fablepets, :all_elements, :text, array: true
  	add_column :fablepets, :all_colors, :text, array: true
  end
end
