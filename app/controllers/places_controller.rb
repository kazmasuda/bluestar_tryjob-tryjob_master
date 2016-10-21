class PlacesController < ApplicationController
  def index
    @places = Place.all
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.save
    redirect_to places_path
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
  end

private

  def place_params
    params[:place].permit(:name)
  end

end
