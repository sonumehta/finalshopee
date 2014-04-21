# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    product_id 1
    content "MyString"
    text "MyString"
    user_id 1
  end
end
