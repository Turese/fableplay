class FablepetUpdateImageNoCache < ActiveRecord::Migration
  def change
  	add_column :fablepets, :anti_cache, :string, null: false, default: ""
  end
end
