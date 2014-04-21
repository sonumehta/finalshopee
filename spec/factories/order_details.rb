# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_detail do
    orderID 1
    productID 1
    orderNumber 1
    price 1.5
    quantity 1
    discount 1.5
    total 1.5
    IDSKU 1
    size "MyString"
    color "MyString"
    shipdate "2014-04-03 18:06:55"
    billdate "2014-04-03 18:06:55"
  end
end
