class ProjectsController < ApplicationController
	def show
		@project = Project.find(params[:id])
		render json: @project
	end

	def create
		@project = Project.create(project_params)
		tag_params[:tags].each do |item|
			@project.tags << Tag.find_or_create_by(item)
		end
		if @project.save
			render json: @project
		end
	end

	private

	def project_params
		params.permit(:user_id, :title)
	end

	def tag_params
		params.permit(tags:[:text])
	end

	
end
