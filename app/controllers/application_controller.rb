class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
<<<<<<< HEAD
    @current_user = User.find_by({ "id" => session["user_id"] })
  end

  def force_user_sign_in
    if @current_user == nil
      redirect_to "/login"
    end
  end
end
=======
    puts "------------------ code before every request ------------------"
  end
end
>>>>>>> 0976d30de68aec61589aef93250edad3c48753ca
