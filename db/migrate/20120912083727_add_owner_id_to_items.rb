class AddOwnerIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :owner_id, :integer
  end
end
