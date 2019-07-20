class FablepetsDefaultValueStatTotal < ActiveRecord::Migration
  def change
  	change_column :fablepets, :stat_total, :integer
  	change_column_default :fablepets, :stat_total, 9
  end
end
