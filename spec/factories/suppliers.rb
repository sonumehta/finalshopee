# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :supplier do
    company_name "MyString"
    email "MyString"
    address1 "MyString"
    address2 "MyString"
    city "MyString"
    state "MyString"
    pincode 1
    phone 1
  end
end
