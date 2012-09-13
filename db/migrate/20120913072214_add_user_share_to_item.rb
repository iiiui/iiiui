class AddUserShareToItem < ActiveRecord::Migration
  def change
    add_column :items, :user_shares_id, :integer
  end
end
