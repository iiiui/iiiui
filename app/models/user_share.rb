class UserShare < ActiveRecord::Base
  attr_accessible :item_id, :user_id, :picture_url, :title, :description, :category_id, :photos_attributes, :tags_attributes, :tag_list, :category_name
  acts_as_taggable
  belongs_to :owner, :class_name => "User", :foreign_key => "user_id"

  belongs_to :category, :class_name => "Category", :foreign_key => "category_id"

  has_one :item ,:foreign_key => "user_shares_id"
  has_many :user_likes, :foreign_key => "user_shares_id"

  has_many :shares, :foreign_key => "user_shares_id"

  has_many :comments, :foreign_key => "user_shares_id"
  accepts_nested_attributes_for :comments

  has_many :photos, :foreign_key => "user_shares_id"
  # accepts_nested_attributes_for :photos



  def category_name
      category.try(:name)
  end

  def category_name=(name)
      self.category = Category.find_or_create_by_name(name) if name.present?
  end



  def insert(user_id,photo_ids)
    self.user_id = user_id
    self.save
    if photo_ids
      photo_ids.each do |id|
        Photo.update(id,:user_shares_id => self.id)
      end
    end
    Category.update(self.category.id,:user_id => self.user_id)
  end


  def isown?(user_id)
    self.user_id == user_id
  end

  def can_buy?
    Item.where(:user_shares_id => self.id).count == 1
  end

end
