class Api::V1::PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render json: @photos
  end

  def create
    # @photo = Photo.find_or_create_by(photo_params)
    # byebug
  end


  private
  def photo_params
  	params.require(:photo).permit(:name, :description, :user_id, :location_id)
  end
end
