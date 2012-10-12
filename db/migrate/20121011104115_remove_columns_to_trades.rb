class RemoveColumnsToTrades < ActiveRecord::Migration
  def change
    remove_column :trades, :receiver_name
    remove_column :trades, :receiver_state
    remove_column :trades, :receiver_city
    remove_column :trades, :receiver_district
    remove_column :trades, :receiver_address
    remove_column :trades, :receiver_zip
    remove_column :trades, :receiver_mobile
  end
end
