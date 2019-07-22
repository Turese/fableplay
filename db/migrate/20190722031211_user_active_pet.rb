class UserActivePet < ActiveRecord::Migration
  def change
  	add_column :users, :active_pet, :string
  end
end
