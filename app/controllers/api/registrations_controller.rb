class Api::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    build_resource
    if resource.save
      if resource.active_for_authentication?
        sign_in(resource_name, resource)
        render :json => { :success => true,:user=>resource, :token => resource.authentication_token}
      else
        expire_session_data_after_sign_in!
        render :json => { :success => true, :token => resource.authentication_token }
      end
    else
      clean_up_passwords resource
      render :json => { :success => false, :errors => resource.errors }
    end
  end

end
