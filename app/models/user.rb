class User < ActiveRecord::Base
  self.primary_key = 'username'
  has_many :fablepets, foreign_key: :unique_name, primary_key: :username
  has_many :items
  has_secure_password


  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true	


end