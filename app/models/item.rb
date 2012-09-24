class Item < ActiveRecord::Base
  attr_accessible :description, :title, :owner_id, :user_shares_id, :price, :count, :limit_at
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  validates :title,:owner_id,:user_shares_id, :presence => true
  belongs_to :user_share, :class_name => "UserShare", :foreign_key => "user_shares_id"
  has_many :cart_items
  has_many :orders
  before_destroy :ensure_not_referenced_by_any_cart_item

  def insert(owner_id,user_shares_id)
    self.owner_id = owner_id
    self.user_shares_id = user_shares_id
    self.save
  end

  def isown?(user_id)
    self.owner_id == user_id
  end

  private
    # ensure that there are no cart items referencing this item
    def ensure_not_referenced_by_any_cart_item 
      if cart_items.empty?
        return true
      else
        logger.error 'cart Items present'
        return false
      end
    end
end
