class CreateUserAddresses < ActiveRecord::Migration
  def change
    create_table :user_addresses do |t|
      t.string :name
      t.string :state
      t.string :city
      t.string :district
      t.string :address
      t.string :zip
      t.string :mobile

      t.timestamps
    end
  end
end
