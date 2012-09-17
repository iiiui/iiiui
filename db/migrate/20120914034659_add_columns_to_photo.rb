class AddColumnsToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :item_id, :integer
    add_column :photos, :user_id, :integer
    add_column :photos, :user_shares_id, :integer
  end
end
