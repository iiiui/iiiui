class Order < ActiveRecord::Base
  attr_accessible :count, :item_id, :order_from, :price, :title, :total_fee, :trade_id
  belongs_to :trade
end
