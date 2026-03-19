class EntriesController < ApplicationController

  def new
  end

  def create
<<<<<<< HEAD
  @entry = Entry.new
  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry["occurred_on"] = params["occurred_on"]
  @entry["place_id"] = params["place_id"]
  @entry["user_id"] = @current_user["id"]

  @entry.uploaded_image.attach(params["uploaded_image"])

  @entry.save
  redirect_to "/places/#{@entry["place_id"]}"
end
=======
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
  end

>>>>>>> 0976d30de68aec61589aef93250edad3c48753ca
end
