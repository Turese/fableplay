class AddAssociationsToUsersAndFablepets < ActiveRecord::Migration
  def change
  	add_column :fablepets, :username, :string
  end
end
