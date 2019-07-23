class FablepetsDefaultValueStatTotal < ActiveRecord::Migration
  def change
  	change_column_default :fablepets, :stat_total, nil
  	change_column :fablepets, :stat_total, 'integer USING CAST(stat_total AS integer)'
  	change_column_default :fablepets, :stat_total, 9
  end
end
