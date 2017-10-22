class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :items, :user_id, :updated_at

  belongs_to :user
  has_many :items
end
