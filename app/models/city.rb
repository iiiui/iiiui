class City < ActiveRecord::Base
  attr_accessible :name, :region_id
  has_many :districts
  belongs_to :region
end
