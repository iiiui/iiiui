class Item < ActiveRecord::Base
  attr_accessible :description, :title, :owner_id
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  validates :title,:owner_id, :presence => true
  def insert(owner_id)
    self.owner_id = owner_id
    self.save
  end
  def isown?(user_id)
    self.owner_id == user_id
  end

end
