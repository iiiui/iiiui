# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trade_address do
    name "MyString"
    state_id 1
    city_id 1
    state "MyString"
    c "MyString"
    city "MyString"
    district_id 1
    district "MyString"
    address "MyString"
    zip "MyString"
    mobile "MyString"
  end
end
