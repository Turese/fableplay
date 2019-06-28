class ChangePatternToIntInFablepet < ActiveRecord::Migration
  def change
  	change_column :fablepets, :pattern, :integer
  end
end
