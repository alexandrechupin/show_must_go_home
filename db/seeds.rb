# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 5 fake hosts...'
5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    host: true,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    password: "password",
    email: Faker::Internet.email,
  )
  user.save!
end
puts 'Finished!'

puts 'Creating 5 fake artists...'
5.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    host: false,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    password: "password",
    email: Faker::Internet.email,
  )
  user.save!
end
puts 'Finished!'
