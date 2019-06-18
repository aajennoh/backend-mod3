class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
  	@user = User.find_or_create_by(user_params)
  	session[:user_id] = @user.id
  	render json: @user
  end

  def user_params
  	params.require(:user).permit(:name, :email)
  end
end
