# coding: utf-8
class Api::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def weibo
    @user = User.weibo_for_api('weibo',params[:token],params[:uid],params[:device_token])
    if @user
      sign_in(:user, @user)
      User.update(@user.id,:device_token=>params[:device_token])
      data = { 
        :success => true, 
        :token =>@user.authentication_token,
        :user =>@user,:company=>@user.company,
        :photos=>@user.photo,:car=>@user.car, 
        :avatar=>@user.picture_url(:large),
        :bind_weibo=>@user.bind?('weibo') 
      }
      if @user.bind?('weibo')
        data[:weibo_username] = Auth.where(:user_id => @user.id,:provider => 'weibo')[0].infos[0].screen_name
      end
      render :json => data

    else
      render :json=>{:success => false}
    end
  end
end
