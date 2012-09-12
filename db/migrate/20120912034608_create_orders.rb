class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :title
      t.integer :item_id
      t.integer :count
      t.string :order_from
      t.string :total_fee
      t.string :price
      t.integer :trade_id

      t.timestamps
    end
  end
end
