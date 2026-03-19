class SessionsController < ApplicationController
  def new
  end

  def create
<<<<<<< HEAD
    @user = User.find_by({ "email" => params["email"] })

    if @user != nil && BCrypt::Password.new(@user["password"]) == params["password"]
      session["user_id"] = @user["id"]
      redirect_to "/places"
    else
      flash["notice"] = "Invalid email or password."
      redirect_to "/login"
    end
  end

  def destroy
    session["user_id"] = nil
    redirect_to "/login"
=======
  end

  def destroy
>>>>>>> 0976d30de68aec61589aef93250edad3c48753ca
  end
end
  