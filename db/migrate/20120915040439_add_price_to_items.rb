class AddPriceToItems < ActiveRecord::Migration
  def change
    add_column :items, :price, :string
    add_column :items, :count, :integer
    add_column :items, :limit_at, :datetime
  end
end
