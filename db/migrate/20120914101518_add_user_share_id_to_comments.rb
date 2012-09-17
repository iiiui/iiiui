class AddUserShareIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user_shares_id, :integer
  end
end
