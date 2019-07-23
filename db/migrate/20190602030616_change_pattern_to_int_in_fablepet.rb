class ChangePatternToIntInFablepet < ActiveRecord::Migration
  def change
  	change_column :fablepets, :pattern, 'integer USING CAST(pattern AS integer)'
  end
end
