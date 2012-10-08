# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121008035500) do

  create_table "activities", :force => true do |t|
    t.integer  "from_id"
    t.integer  "to_id"
    t.integer  "object_id"
    t.string   "object_type"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cart_items", :force => true do |t|
    t.integer  "item_id"
    t.integer  "cart_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "count"
    t.string   "price"
  end

  create_table "carts", :force => true do |t|
    t.string   "total_price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "comments", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_shares_id"
    t.integer  "user_id"
  end

  create_table "items", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "owner_id"
    t.integer  "buyer_id"
    t.integer  "user_shares_id"
    t.string   "price"
    t.integer  "count"
    t.datetime "limit_at"
  end

  create_table "notifications", :force => true do |t|
    t.integer  "from_id"
    t.integer  "to_id"
    t.integer  "object_id"
    t.string   "object_type"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "orders", :force => true do |t|
    t.string   "title"
    t.integer  "item_id"
    t.integer  "count"
    t.string   "order_from"
    t.string   "total_fee"
    t.string   "price"
    t.integer  "trade_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "url"
    t.string   "origin_name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "item_id"
    t.integer  "user_id"
    t.integer  "user_shares_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "shares", :force => true do |t|
    t.integer  "user_id"
    t.integer  "user_shares_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "trades", :force => true do |t|
    t.string   "status"
    t.string   "receiver_name"
    t.string   "receiver_state"
    t.string   "receiver_city"
    t.string   "receiver_district"
    t.string   "receiver_address"
    t.string   "receiver_zip"
    t.string   "receiver_mobile"
    t.string   "seller_mobile"
    t.string   "seller_email"
    t.integer  "seller_id"
    t.integer  "buyer_id"
    t.string   "received_payment"
    t.string   "available_confirm_fee"
    t.string   "total_fee"
    t.string   "price"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "user_addresses", :force => true do |t|
    t.string   "name"
    t.string   "state"
    t.string   "city"
    t.string   "district"
    t.string   "address"
    t.string   "zip"
    t.string   "mobile"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_infos", :force => true do |t|
    t.integer  "user_id"
    t.text     "about"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_likes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_shares_id"
  end

  create_table "user_shares", :force => true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "title"
    t.string   "description"
    t.string   "picture_url"
    t.integer  "category_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "authentication_token"
    t.string   "device_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
