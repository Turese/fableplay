class UserCurrencies < ActiveRecord::Migration
  def change
  	add_column :users, :fable_coins, :integer, null: false, default: 100
  	add_column :users, :gold_coins, :integer, null: false, default: 10
  	add_column :users, :opals, :integer, null: false, default: 0
  end
end
