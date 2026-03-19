class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
    @current_user = User.find_by({ "id" => session["user_id"] })
  end

  def force_user_sign_in
    if @current_user == nil
      redirect_to "/login"
    end
  end
end