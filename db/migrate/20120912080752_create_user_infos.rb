class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.integer :user_id
      t.text :about
      t.string :name

      t.timestamps
    end
  end
end
