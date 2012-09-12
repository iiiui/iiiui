# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_info do
    user_id 1
    about "MyText"
    name "MyString"
  end
end
