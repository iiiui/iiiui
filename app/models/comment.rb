class Comment < ActiveRecord::Base
  attr_accessible :body, :title, :user_shares_id, :user_id
  belongs_to :user_share, :class_name => "UserShare", :foreign_key => "user_shares_id"
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
end
