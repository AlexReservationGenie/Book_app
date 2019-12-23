class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authorize_admin
    if current_user
      return if current_user.admin?
    end
    redirect_to root_path, alert: 'Admins only!'
  end
end
