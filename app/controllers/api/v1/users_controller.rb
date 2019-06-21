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

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def destroy
    session[:user_id] = nil
    empty_photo_location = Location.all.select{|location| location.photos.empty?}
    empty_photo_location.each {|location| location.delete}
  end


  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
