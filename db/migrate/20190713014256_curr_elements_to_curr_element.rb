class CurrElementsToCurrElement < ActiveRecord::Migration
  def change
  	rename_column :fablepets, :curr_elements, :curr_element
  end
end
