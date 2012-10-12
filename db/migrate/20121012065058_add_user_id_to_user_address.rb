class AddUserIdToUserAddress < ActiveRecord::Migration
  def change
    add_column :user_addresses, :user_id, :integer
  end
end
