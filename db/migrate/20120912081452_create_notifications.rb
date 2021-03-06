class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.integer :from_id
      t.integer :to_id
      t.integer :object_id
      t.string :object_type
      t.string :description

      t.timestamps
    end
  end
end
