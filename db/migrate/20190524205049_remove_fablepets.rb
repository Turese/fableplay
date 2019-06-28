class RemoveFablepets < ActiveRecord::Migration
  def change
  	drop_table :fablepets
  end
end
