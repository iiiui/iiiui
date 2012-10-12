class UserAddress < ActiveRecord::Base
  attr_accessible :address, :city, :district, :mobile, :name, :state, :zip, :user_id
  belongs_to :user
end
