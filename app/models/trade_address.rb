class TradeAddress < ActiveRecord::Base
  attr_accessible :address, :c, :city, :city_id, :district, :district_id, :mobile, :name, :state, :state_id, :zip
end
