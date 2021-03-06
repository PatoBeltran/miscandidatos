class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin!
    unless user_signed_in? && current_user.admin?
      redirect_to root_path, notice: "No tienes permitido acceder."
    end
  end
end
