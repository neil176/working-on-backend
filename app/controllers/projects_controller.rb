class ProjectsController < ApplicationController
	def show
		@project = Project.find(params[:id])
		render json: @project
	end

	def create
		@project = Project.create(project_params)
		render json: @project
	end

	private

	def project_params
		params.permit(:user_id, :title)
	end
end
