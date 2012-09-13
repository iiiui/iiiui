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
  
  private
   def current_cart
    Cart.find(session[:cart_id])
   rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
   end
end
