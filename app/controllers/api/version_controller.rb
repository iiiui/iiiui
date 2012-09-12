class Api::VersionController < ApplicationController
  def index
    render :json =>{"version" =>"1.0"} 
  end
end
