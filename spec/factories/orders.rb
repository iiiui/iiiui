# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    title "MyString"
    item_id 1
    count 1
    order_from "MyString"
    total_fee "MyString"
    price "MyString"
    trade_id 1
  end
end
