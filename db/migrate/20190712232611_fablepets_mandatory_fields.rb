class FablepetsMandatoryFields < ActiveRecord::Migration
  def change
  	change_column_null :fablepets, :species, false
  	change_column_null :fablepets, :pattern, false
  	change_column_null :fablepets, :colors, false
  	change_column_null :fablepets, :curr_colors, false
  	change_column_null :fablepets, :elements, false
  	change_column_null :fablepets, :curr_elements, false
  	change_column_null :fablepets, :level, false
  	change_column_null :fablepets, :hp, false
  	change_column_null :fablepets, :curr_hp, false
  	change_column_null :fablepets, :attack, false
  	change_column_null :fablepets, :defense, false
	 change_column_null :fablepets, :magic_attack, false
	 change_column_null :fablepets, :magic_defense, false
	 change_column_null :fablepets, :mp, false
	 change_column_null :fablepets, :curr_mp, false
	 change_column_null :fablepets, :charisma, false
	 change_column_null :fablepets, :agility, false
	 change_column_null :fablepets, :speed, false
	 change_column_null :fablepets, :username, false
	 add_column :fablepets, :stat_total, :string, null:false, default:9
  end
end