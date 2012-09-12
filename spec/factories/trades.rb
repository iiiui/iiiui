# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trade do
    status "MyString"
    receiver_id 1
    receiver_name "MyString"
    receiver_state "MyString"
    receiver_city "MyString"
    receiver_district "MyString"
    receiver_address "MyString"
    receiver_zip "MyString"
    receiver_mobile "MyString"
    seller_mobile "MyString"
    seller ""
    seller_email "MyString"
    seller_id 1
    received_payment "MyString"
    available_confirm_fee "MyString"
    total_fee "MyString"
    price "MyString"
  end
end
