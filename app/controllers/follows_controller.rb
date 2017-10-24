class FollowsController < ApplicationController

	def create
		@follow = Follow.create(follow_params)
		render json: @follow.follower
	end

	private

	def follow_params
		params.permit(:follower_id, :followee_id)
	end

end
