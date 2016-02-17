# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  Restaurant.create(name: Faker::Company.name, address: "#{Faker::Address.street_address} #{Faker::Address.city}", phone_number: Faker::PhoneNumber.phone_number, category: %W(chinese italian japanese french belgian).sample)
end
