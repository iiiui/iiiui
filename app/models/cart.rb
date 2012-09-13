class Cart < ActiveRecord::Base
  attr_accessible :total_price
  has_many :cart_items, :dependent => :destroy
end
