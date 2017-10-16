class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :items

  belongs_to :user
  has_many :items
end
