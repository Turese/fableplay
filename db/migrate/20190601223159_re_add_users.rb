class ReAddUsers < ActiveRecord::Migration
  def change
    create_table :users, id: false  do |t|
      t.string :email
      t.string :username, null: false
      t.string :password_digest

      t.timestamps null: false
    end
    add_index :users, :username, unique: true
  end
end
