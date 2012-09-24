class Admin::UsersController < ApplicationController
  before_filter :isadmin
  layout 'admin'
  def index
    @users = User.paginate(:page => params[:page])
  end

  def show
    @user = User.find(params[:id])
  end

end
