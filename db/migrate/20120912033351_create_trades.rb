class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.string :status
      t.string :receiver_name
      t.string :receiver_state
      t.string :receiver_city
      t.string :receiver_district
      t.string :receiver_address
      t.string :receiver_zip
      t.string :receiver_mobile
      t.string :seller_mobile
      t.string :seller_email
      t.integer :seller_id
      t.integer :buyer_id
      t.string :received_payment
      t.string :available_confirm_fee
      t.string :total_fee
      t.string :price

      t.timestamps
    end
  end
end
