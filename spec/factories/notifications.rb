# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :notification do
    from_id 1
    to_id 1
    object_type "MyString"
    description "MyString"
  end
end
