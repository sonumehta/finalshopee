namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(username: "Example User",
                 email_id: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar",
		phone_no: 9874563210,
		address: "New York",
		admin: true
			)
    99.times do |n|
      username  = Faker::Name.name
      email_id = "example-#{n+1}@railstutorial.org"
      password  = "password"
      phone_no="9874563210"
      address="New York"
      User.create!(username: username,
                   email_id: email_id,
                   password: password,
                   password_confirmation: password,
		phone_no: phone_no,
		address: address)
    end
  end
end

