class User < ActiveRecord::Base
	has_many :fablepets, foreign_key: :unique_id, primary_key: :username
end
