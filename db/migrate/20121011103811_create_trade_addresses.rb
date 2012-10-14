class CreateTradeAddresses < ActiveRecord::Migration
  def change
    create_table :trade_addresses do |t|
      t.string :name
      t.integer :state_id
      t.integer :city_id
      t.string :state
      t.integer :trade_id
      t.string :city
      t.integer :district_id
      t.string :district
      t.string :address
      t.string :zip
      t.string :mobile

      t.timestamps
    end
  end
end
