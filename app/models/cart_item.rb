class CartItem < ActiveRecord::Base
  attr_accessible :cart_id, :item_id, :item, :count, :price
  belongs_to :cart
  belongs_to :item
end
