class AddFieldsToCartItems < ActiveRecord::Migration
  def change
    add_column :cart_items, :count, :integer
    add_column :cart_items, :price, :string
  end
end
