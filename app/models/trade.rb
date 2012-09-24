class Trade < ActiveRecord::Base

  attr_accessible :available_confirm_fee, :price, :received_payment, :receiver_address, 
    :receiver_city, :receiver_district, :receiver_mobile, :receiver_name, :buyer_id,
    :receiver_state, :receiver_zip, :seller_email, :seller_id, :seller_mobile, :status, :total_fee

  validates :seller_id,:buyer_id, :presence => true

  belongs_to :seller, :class_name => "User", :foreign_key => "seller_id"
  belongs_to :buyer, :class_name => "User", :foreign_key => "buyer_id"
  has_many :orders

  def insert(buyer_id,seller_id,cart)
    self.buyer_id = buyer_id
    self.seller_id = seller_id
    cart.cart_items.each do |cart_item|
      self.orders.build(:item => cart_item.item)
    end
    self.save
  end

  def self.buys(buyer_id)
    self.where(:buyer_id => buyer_id).order("created_at desc")
  end

  def self.sells(seller_id)
    self.where(:seller_id => seller_id).order("created_at desc")
  end

end
