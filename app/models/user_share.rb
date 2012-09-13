class UserShare < ActiveRecord::Base
  attr_accessible :item_id, :user_id, :picture_url, :title, :description
  belongs_to :owner, :class_name => "User", :foreign_key => "user_id"
  has_one :item,  :foreign_key => "user_shares_id"
  def insert(user_id)
    self.user_id = user_id
    self.save
  end

  def isown?(user_id)
    self.user_id == user_id
  end

  def can_buy?
    Item.where(:user_shares_id => self.id).count == 1
  end

end
