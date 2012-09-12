# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_address do
    name "MyString"
    state "MyString"
    city "MyString"
    district "MyString"
    address "MyString"
    zip "MyString"
    mobile "MyString"
  end
end
