class ChangePatternToIntInFablepet < ActiveRecord::Migration
  def change
  	change_column :fablepets, :pattern, :integer, 'integer USING CAST(pattern AS integer)'
  end
end
