class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :projects
  
  has_many :follows, foreign_key: "follower_id"
	has_many :followees, through: :follows

	has_many :followeds, class_name: "Follow", foreign_key: "followee_id"
	has_many :followers, through: :followeds 
end
