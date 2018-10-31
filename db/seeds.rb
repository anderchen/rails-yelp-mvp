# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  restaurant = Restaurant.new
  restaurant.name = Faker::Company.name
  restaurant.address = Faker::Address.street_address
  restaurant.category = %w[chinese italian japanese french belgian].sample
  restaurant.phone_number = Faker::PhoneNumber.cell_phone
  restaurant.save
end
