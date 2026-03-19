class PlacesController < ApplicationController
<<<<<<< HEAD
  before_action :force_user_sign_in
=======
>>>>>>> 0976d30de68aec61589aef93250edad3c48753ca

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
<<<<<<< HEAD

    @entries = Entry.where({
      "place_id" => @place["id"],
      "user_id" => @current_user["id"]
    })
  end

  def new
    @place = Place.find_by({ "id" => params["place_id"] })
end

def create
  @entry = Entry.new
  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry["occurred_on"] = params["occurred_on"]
  @entry["place_id"] = params["place_id"]
  @entry["user_id"] = @current_user["id"]
  @entry.save

  redirect_to "/places/#{@entry["place_id"]}"
end
=======
    @entries = Entry.where({ "place_id" => @place["id"] })
  end

  def new
  end
>>>>>>> 0976d30de68aec61589aef93250edad3c48753ca

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end
<<<<<<< HEAD
=======

>>>>>>> 0976d30de68aec61589aef93250edad3c48753ca
end
