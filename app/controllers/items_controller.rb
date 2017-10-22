class ItemsController < ApplicationController

	def create
		# binding.pry
		@item = Item.create(item_params[:item])
		render json: @item.project
	end


	private

	def item_params
		params.permit(item:[:description, :image, :project_id, :core])
	end

end
