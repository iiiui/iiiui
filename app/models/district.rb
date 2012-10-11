class District < ActiveRecord::Base
  attr_accessible :name, :city_id
  belongs_to :city
end
