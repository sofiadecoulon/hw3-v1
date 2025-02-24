class PlaceController < ApplicationController
  def index
    @place = Place.all
  end
  def show
    @place = Place.find_by({"id" => params[:id]})
  end
  def new
    @place = Place.new
  end
  def create
    @place["name"] = params["name"]
     @place.save
      
      redirect_to "/place"
    end
  end
end

