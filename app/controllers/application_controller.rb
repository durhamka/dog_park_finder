class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_admin
    unless current_user && current_user.role == 'admin'
      flash[:error] = "You are not an admin"
      redirect_to root_path
    end
  end
end
