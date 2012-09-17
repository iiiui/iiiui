class Tag < ActiveRecord::Base
  attr_accessible :name, :user_shares_id
  validates :name, :presence => true
  belongs_to :user_share, :class_name => "UserShare", :foreign_key => "user_shares_id"
end
