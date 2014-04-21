FactoryGirl.define do
  factory :user do
    sequence(:username)  { |n| "Person #{n}" }
    sequence(:email_id) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
    phone_no "9874563210"
    address "New York"


factory :admin do
      admin true
    end
  end
end

