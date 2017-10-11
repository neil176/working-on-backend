class Project < ApplicationRecord
	belongs_to :user
	has_many :items
	has_many :project_tags
	has_many :tags, through: :project_tags

end
