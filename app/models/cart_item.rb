class CartItem < ActiveRecord::Base
  attr_accessible :cart_id, :item_id, :item
  belongs_to :cart
  belongs_to :item
end
