class AddUserShareIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :user_shares_id, :integer
  end
end
