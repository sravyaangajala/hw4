class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new
    @user["username"] = params["username"]
    @user["email"] = params["email"]
<<<<<<< HEAD
    @user["password"] = BCrypt::Password.create(params["password"])
    @user.save

    session["user_id"] = @user["id"]
    redirect_to "/places"
  end
end
=======
    @user["password"] = params["password"]
    @user.save
    redirect_to "/"
  end
end
>>>>>>> 0976d30de68aec61589aef93250edad3c48753ca
