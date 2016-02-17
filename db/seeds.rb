# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
addresses = [
"8 Lant St, London SE1, UK",
"117 Weston St, London SE1 3QB, UK",
"A2198, London SE1 4PH, UK",
"254 Tabard St, London SE1 4UN, UK",
"44 Druid St, London SE1 2XD, UK",
"30 Alscot Way, London SE1 5XU, UK",
"12 Mill St, London SE1 2AY, UK",
"5 Cooper's Rd, London SE1 5HW, UK",
"55 Library St, London SE1, UK",
"77 Exton St, London SE1 8UD, UK",
"2 Pear Pl, Lambeth, London SE1 8SA, UK",
"12 Chaplin Cl, Lambeth, London SE1 8TU, UK",
"12 Bushwood Dr, London SE1 5RE, UK",
"243 Union St, London SE1 0LR, UK",
"A2, London SE1, UK",
"24 Borough High St, London SE1 1TL, UK",
"5 Pearman St, Lambeth, London SE1 7RB, UK",
"34 Cluny Pl, London SE1 4QU, UK",
"1C Belvedere Rd, Lambeth, London SE1 7GF, UK",
"128 Grange Rd, London SE1 3AL, UK"
]

rand_addresses = addresses.sample(15)

15.times do |num|
  r = Restaurant.create(name: Faker::Company.name, address: rand_addresses[num], phone_number: Faker::PhoneNumber.cell_phone, category: %W(chinese italian japanese french belgian).sample)
  r.reviews.create(content: "Hey !", rating: (0..5).to_a.sample)
end
