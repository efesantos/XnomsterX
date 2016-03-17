# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
20.times do |n|
  name = Faker::Company.name
  address = Faker::Address.street_name
  description = Faker::Lorem.word

  Place.create!(name: name, 
                address: address, 
                description: description,
                user_id: 1)
end

=end
200.times do |n|
  
  comment = Faker::Lorem.sentence(5)
  user_id = rand(1..3)
  place_id = rand(1..88)

  Comment.create!(comment: comment, 
                user_id: user_id,
                place_id: place_id)
end

