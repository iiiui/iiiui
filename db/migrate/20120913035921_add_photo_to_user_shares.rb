class AddPhotoToUserShares < ActiveRecord::Migration
  def change
    add_column :user_shares, :title, :string
    add_column :user_shares, :description, :string
    add_column :user_shares, :picture_url, :string
  end
end
