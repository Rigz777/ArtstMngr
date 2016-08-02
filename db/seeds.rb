require 'faker'


my_label = Account.create email: "me@mylabel.com", password: "test"



  Event.create(description: "Back To School Concert",
  buyer: "HTX Promotions",
  contact_person: "#{Faker::Name.name}",
  phone: "#{Faker::PhoneNumber.cell_phone}",
  email: "#{Faker::Internet.email}",
  website: "#{Faker::Internet.domain_name}",
  date: "#{Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)}",
  time_of_performance: "#{Faker::Time.forward(365, :evening)}",
  location: "4011 Washington Ave, Houston, TX 77007",
  performance_type: "Music",
  performance_length: "30 minutes",
  ticket_price: "#{Faker::Number.between(15, 75)}",
  expected_attendance: "#{Faker::Number.between(50, 2500)}",
  indoor_outdoor: "Outdoor",
  performance_price: "#{Faker::Number.between(350, 750)}")


  Event.create(description: "Block Party",
  buyer: "HTX Promotions",
  contact_person: "#{Faker::Name.name}",
  phone: "#{Faker::PhoneNumber.cell_phone}",
  email: "#{Faker::Internet.email}",
  website: "#{Faker::Internet.domain_name}",
  date: "#{Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)}",
  time_of_performance: "#{Faker::Time.forward(365, :evening)}",
  location: "220 12th Ave, New York, NY 10001",
  performance_type: "Music",
  performance_length: "30 minutes",
  ticket_price: "#{Faker::Number.between(15, 75)}",
  expected_attendance: "#{Faker::Number.between(50, 2500)}",
  indoor_outdoor: "Outdoor",
  performance_price: "#{Faker::Number.between(350, 750)}")



  Event.create(description: "New Years Bash",
  buyer: "HTX Promotions",
  contact_person: "#{Faker::Name.name}",
  phone: "#{Faker::PhoneNumber.cell_phone}",
  email: "#{Faker::Internet.email}",
  website: "#{Faker::Internet.domain_name}",
  date: "#{Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)}",
  time_of_performance: "#{Faker::Time.forward(365, :evening)}",
  location: "2301 Bellevue Ave, Los Angeles, CA 90026",
  performance_type: "Music",
  performance_length: "30 minutes",
  ticket_price: "#{Faker::Number.between(15, 75)}",
  expected_attendance: "#{Faker::Number.between(50, 2500)}",
  indoor_outdoor: "Outdoor",
  performance_price: "#{Faker::Number.between(350, 750)}")



  Event.create(description: "Comedy Show",
  buyer: "HTX Promotions",
  contact_person: "#{Faker::Name.name}",
  phone: "#{Faker::PhoneNumber.cell_phone}",
  email: "#{Faker::Internet.email}",
  website: "#{Faker::Internet.domain_name}",
  date: "#{Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)}",
  time_of_performance: "#{Faker::Time.forward(365, :evening)}",
  location: "2640 Elm St, Dallas, TX 75226",
  performance_type: "Music",
  performance_length: "30 minutes",
  ticket_price: "#{Faker::Number.between(15, 75)}",
  expected_attendance: "#{Faker::Number.between(50, 2500)}",
  indoor_outdoor: "Outdoor",
  performance_price: "#{Faker::Number.between(350, 750)}")

  Event.create(description: "Back To School Concert",
  buyer: "HTX Promotions",
  contact_person: "#{Faker::Name.name}",
  phone: "#{Faker::PhoneNumber.cell_phone}",
  email: "#{Faker::Internet.email}",
  website: "#{Faker::Internet.domain_name}",
  date: "#{Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)}",
  time_of_performance: "#{Faker::Time.forward(365, :evening)}",
  location: "3175 N Broadway St, Chicago, IL 60657",
  performance_type: "Music",
  performance_length: "30 minutes",
  ticket_price: "#{Faker::Number.between(15, 75)}",
  expected_attendance: "#{Faker::Number.between(50, 2500)}",
  indoor_outdoor: "Outdoor",
  performance_price: "#{Faker::Number.between(350, 750)}")
