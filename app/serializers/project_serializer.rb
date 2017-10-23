class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :items, :user_id, :tags, :updated_at, :user

  belongs_to :user
  has_many :items
  has_many :project_tags
	has_many :tags, through: :project_tags
end
