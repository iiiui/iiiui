class Share < ActiveRecord::Base
  attr_accessible :user_id, :user_shares_id
  belongs_to :user_share, :class_name => "UserShare", :foreign_key => "user_shares_id"
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
end
