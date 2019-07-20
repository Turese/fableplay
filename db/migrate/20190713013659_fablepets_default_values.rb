class FablepetsDefaultValues < ActiveRecord::Migration
  def change
  	change_column_default :fablepets, :level, 1
  	change_column_default :fablepets, :level, 1
  	change_column_default :fablepets, :hp, 1
  	change_column_default :fablepets, :curr_hp, 1
  	change_column_default :fablepets, :attack, 1
  	change_column_default :fablepets, :defense, 1
	change_column_default :fablepets, :magic_attack, 1
	change_column_default :fablepets, :magic_defense, 1
	change_column_default :fablepets, :mp, 1
	change_column_default :fablepets, :curr_mp, 1
	change_column_default :fablepets, :charisma, 1
	change_column_default :fablepets, :agility, 1
	change_column_default :fablepets, :speed, 1
  end
end
