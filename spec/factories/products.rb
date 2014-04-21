# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    pname "MyString"
    IDSKU ""
    supplier_id ""
    subcat_id ""
    desc "MyString"
    price 1.5
    color "MyString"
    discount 1.5
    product_available false
    discount ""
    picture "MyString"
    ranking ""
  end
end
