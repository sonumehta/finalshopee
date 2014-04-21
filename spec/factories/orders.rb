# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    custID 1
    orderNumber 1
    payID 1
    orderdate "2014-04-03 18:11:13"
    shipdate "2014-04-03 18:11:13"
    reqdate "2014-04-03 18:11:13"
    shipperID 1
    salesTax 1.5
    status "MyString"
    error "MyText"
    fulfilled false
    deleted false
    paid false
    paydate "2014-04-03 18:11:13"
  end
end
