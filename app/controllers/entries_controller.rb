class EntriesController < ApplicationController
  def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @entry["place_id"]})
    # render entrys/show view with details about entry
  end
  
  def new
    @place = Place.find_by({"id" => params["place_id"]})
    # render entrys/new view with new entry form
  end
  def create
    # start with a new entry
    @entry = Entry.new
    # assign user-entered form data to entry's columns
    @entry["title"] = params["title"]
    @entry["descrition"] = params["descrition"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]
    # assign relationship between entry and Place
    @entry["place_id"] = params["place_id"]
    # save entry row
    @entry.save
    # redirect user
    redirect_to "/entry/#{@entry["place_id"]}"
  end
  end
