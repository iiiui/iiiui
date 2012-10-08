# encoding: utf-8
class Api::PasswordsController < MobileController
  def update
    @user = User.where(:authentication_token => params[:token]).first
    if @user.update_attributes(params[:user])
      render :json => { :success => true }
    else
      render :json => { :success => false, :error=> "fail"}
    end
  end

  def create
    @user = User.where(:authentication_token => params[:token]).first
    @user.send_reset_password_instructions(params[:user])
    if successfully_sent?(resource)
      render :json => { :success => true }
    else
      render :json => { :success => false, :error=> "fail"}
    end
  end

end
