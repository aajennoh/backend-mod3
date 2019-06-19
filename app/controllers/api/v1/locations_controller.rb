class Api::V1::LocationsController < ApplicationController
  def index
    @locations = Location.all
    render json: @locations
  end

  def create
    @location = Location.find_or_create_by(location_params)
    render json: @location
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    render json: @location
  end

  private
  def location_params
    params.require(:location).permit(:latitude, :longitude, :name, :user_id)
  end
end
