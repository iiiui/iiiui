class ApplicationController < ActionController::Base

  #TODO mobile device token auth
  def token
  end

  def isadmin
     if current_user and current_user.has_role? :admin
     else
       render :text => "401 Unauthorized"
     end
  end

  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
end
