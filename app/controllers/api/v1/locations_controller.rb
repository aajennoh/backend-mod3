class Api::V1::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations
  end

  def create
    @location = Location.find_or_create_by(location_params)
    render json: @location
  end

  def location_params
  	params.require(:location).permit(:latitude, :longitude, :name, :user_id)
  end
end
