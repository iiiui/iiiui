class Admin::DashboardController < ApplicationController
  before_filter :isadmin
  layout 'admin'
  def index
  end
end
