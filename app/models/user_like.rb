class UserLike < ActiveRecord::Base
  attr_accessible :item_id, :user_id
end
