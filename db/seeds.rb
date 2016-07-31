require 'faker'

Account.delete_all
Event.delete_all


my_label = Account.create email: "me@mylabel.com", password: "test"


100.times do |i|
Event.create description: "#{Faker::University.name}",
  buyer: "#{Faker::Company.name}",
  contact_person: "#{Faker::Name.name}",
  phone: "#{Faker::PhoneNumber.cell_phone}",
  email: "#{Faker::Internet.email}",
  website: "#{Faker::Internet.domain_name}",
  date: "#{Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)}",
  time_of_performance: "#{Faker::Time.forward(365, :evening)}",
  location: "#{Faker::Address.street_name}",
  performance_type: "Music",
  performance_length: "30 minutes",
  ticket_price: "#{Faker::Number.between(15, 75)}",
  expected_attendance: "#{Faker::Number.between(50, 2500)}",
  indoor_outdoor: "Outdoor",
  performance_price: "#{Faker::Number.between(350, 750)}"
end
