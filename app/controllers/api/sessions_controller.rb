# encoding: utf-8

class Api::SessionsController < Devise::SessionsController
  respond_to :json
  # before_filter :api_authenticate!, :only => [:destroy]

  def record_action (name, user, trip_id = -1, client = 'iOS', time = DateTime.now)
    # unknown users have id of -1 
    User.record_action(name, user, request, trip_id, client, time)
  end

  # POST /resource/sign_in
  def create
    #TODO iphones send password and confirm pass, but really the pass should be confirmed on iphone side
    #make sure this is being done
    resource = User.find_for_database_authentication(:email => params[:user][:email])
    if !resource.nil? and resource.valid_password?(params[:user][:password])
      User.update(resource.id,:device_token=>params[:user][:device_token])
      resource.astrology_sign = resource.get_astrology_sign
      # render :json => { :success => true, :token => resource.authentication_token,:user => resource,:company=>resource.company,:car=>resource.car,:photos=>resource.photo,:bind_weibo=>resource.bind?('weibo') }
      data = { 
        :success => true, 
        :token => resource.authentication_token,
        :user => resource,
        :company=>resource.company,
        :car=>resource.car,
        :photos=>resource.photo,
        :bind_weibo=>resource.bind?('weibo'),
        :avatar=>resource.picture_url(:large)
      }
      if resource.bind?('weibo')
        data[:weibo_username] = Auth.where(:user_id => resource.id,:provider => 'weibo')[0].infos[0].screen_name
      end
      record_action("signed_in", resource)
      render :json => data
    else
      loginerror
    end
=begin
    resource = warden.authenticate!(:scope => resource_name,:recall => "#{controller_path}#loginerror")
    sign_in(resource_name, resource)
    User.update(resource.id,:device_token=>params[:user][:device_token])
    resource.astrology_sign = resource.get_astrology_sign
    render :json => { :success => true, :token => resource.authentication_token,:user => resource,:company=>resource.company,:car=>resource.car,:photos=>resource.photo,:bind_weibo=>resource.bind?('weibo') }
=end

    
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

=begin
  # Helper for use in before_filters where no authentication is required.
  #
  # Example:
  #   before_filter :require_no_authentication, :only => :new
  def require_no_authentication
    assert_is_devise_resource!
    return unless is_navigational_format?
    no_input = devise_mapping.no_input_strategies

    authenticated = if no_input.present?
      args = no_input.dup.push :scope => resource_name
      warden.authenticate?(*args)
    else
      warden.authenticated?(resource_name)
    end

    if authenticated && resource = warden.user(resource_name)
    #  flash[:alert] = I18n.t("devise.failure.already_authenticated")
    #  redirect_to after_sign_in_path_for(resource)
    end
  end
=end
end
