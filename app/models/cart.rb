class Cart < ActiveRecord::Base
  attr_accessible :total_price
  has_many :cart_items, :dependent => :destroy
  def total_price
    cart_items.to_a.sum {|item| Integer(item.total_price)}
  end
end
