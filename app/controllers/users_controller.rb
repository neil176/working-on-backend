class UsersController < ApplicationController
	# signup

  # def index
  #   @users = User.all
  #   render json: @users
  # end

  def create
    @user = User.new(user_params)
    if @user.save
      token = encode_token({ user_id: @user.id})
      render json: { user: @user, jwt: token}
    end
  end

# edit preferences
  def update
    @user = current_user
    @user.update(user_params)
    # might have to have an if for validation
    render json: {user: @user}
  end

# delete account
  def destroy
  end

# this will be the user's homepage ?
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def current # this should redirect ?
    if logged_in?
      render json: @user
    else
      render json: {message: "Please log in"}
    end
  end

  private

  def user_params
    params.permit(:username, :password, :email)
  end
end
