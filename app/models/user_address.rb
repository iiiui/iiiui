class UserAddress < ActiveRecord::Base
  attr_accessible :address, :city, :district, :mobile, :name, :state, :zip
end
