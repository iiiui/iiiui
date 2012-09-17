class AddUserShareIdToUserLikes < ActiveRecord::Migration
  def change
    add_column :user_likes, :user_shares_id, :integer
  end
end
