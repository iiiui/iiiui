class ChangeFildsToTrade < ActiveRecord::Migration
  def change
    remove_column :trades ,:receiver_id
    add_column :items, :buyer_id, :integer
  end
end
