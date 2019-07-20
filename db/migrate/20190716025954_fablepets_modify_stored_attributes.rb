class FablepetsModifyStoredAttributes < ActiveRecord::Migration
  def change
  	add_column :fablepets, :primary_color, :integer
  	add_column :fablepets, :secondary_color, :integer
  	add_column :fablepets, :tertiary_color, :integer
  	remove_column :fablepets, :curr_colors
  	remove_column :fablepets, :colors
  	remove_column :fablepets, :elements
  end
end
