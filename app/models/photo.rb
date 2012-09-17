class Photo < ActiveRecord::Base
  attr_accessible :origin_name, :url, :user_shares_id, :user_id, :item_id
  mount_uploader :url, PhotoUploader
  belongs_to :user_share, :class_name => "UserShare", :foreign_key => "user_shares_id"
  belongs_to :user
  belongs_to :item
end
