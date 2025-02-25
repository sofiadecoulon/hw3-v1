class PlacesController < ApplicationController
  def index
    @place = Place.all
  end
  def show
    @place = Place.find_by({"id" => params[:id]})
    @entries = Place.find_by(id: params[:id])
  end
  def new
    @place = Place.new
  end
  def create
    @place = Place.new
    @place ["name"] = params["name"]
     @place.save
      
      redirect_to "/places"
    end
  end

