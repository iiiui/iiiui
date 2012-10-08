# encoding: utf-8
class Api::SessionsController < Devise::SessionsController
  respond_to :json

  def create
    resource = User.find_for_database_authentication(:email => params[:user][:email])
    if !resource.nil? and resource.valid_password?(params[:user][:password])
      User.update(resource.id,:device_token=>params[:user][:device_token])
      data = { 
        :success => true, 
        :token => resource.authentication_token,
        :user => resource
      }

      # if resource.bind?('weibo')
      #   data[:weibo_username] = Auth.where(:user_id => resource.id,:provider => 'weibo')[0].infos[0].screen_name
      # end

      render :json => data
    else
      loginerror
    end
  end

  def loginerror
    render :json => { :success => false, :errors => "用户名或密码错误" } 
  end 

  # DELETE /resource/sign_out
  def destroy
    user = User.where(:authentication_token => params[:token]).first
    if user
      Devise.sign_out_all_scopes ? sign_out : sign_out(user)
      render :json => {:success  => true }
    else
      render :json => {:success  => false}
    end
  end

end
