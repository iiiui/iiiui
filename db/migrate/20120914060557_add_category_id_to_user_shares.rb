class AddCategoryIdToUserShares < ActiveRecord::Migration
  def change
    add_column :user_shares, :category_id, :integer
  end
end
