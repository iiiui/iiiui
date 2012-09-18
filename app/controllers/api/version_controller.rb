class Api::VersionController < ApplicationController
  respond_to :json
  def index
    respond_with "1.0"
  end
end
