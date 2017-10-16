class User < ApplicationRecord
	has_secure_password
	has_many :projects

  has_many :items, through: :projects


	has_many :follows, foreign_key: "follower_id"
	has_many :followees, through: :follows

	has_many :followeds, class_name: "Follow", foreign_key: "followee_id"
	has_many :followers, through: :followeds 



end
