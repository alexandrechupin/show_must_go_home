# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# METTRE EN COMMENTAIRE SI VOUS AVEZ DEJA CREE LES 5 FAKE HOSTS

puts 'Creating 5 fake hosts...'
10.times do
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

# METTRE EN COMMENTAIRE SI VOUS AVEZ DEJA CREE LES 5 FAKE ARTISTS

puts 'Creating 5 fake artists...'
10.times do
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    host: false,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    password: "password",
    email: Faker::Internet.email,
    remote_photo_url: "https://res.cloudinary.com/dkvelfqyl/image/upload/v1566377203/twfychoo7jfu5p5lgkbh.jpg"
  )
  user.save!
end
puts 'Finished!'

puts 'Creating 1 fake spaces...'
  space_one = Space.new(
    user_id: 87,
    name: "Salon flute",
    address: "25 rue lecourbe",
    city: "Paris",
    zipcode: "75015",
    equipment: "piano à queue",
    event_type: "événements classique",
    place_type: "salon",
    capacity: 30,
    description: "Grand salon exposé plein sud pouvant accueillir jusqu'à trente personnes. J'organise régulièrement des salons musicaux classique.",
    policy: "Annulation possible jusqu'à une semaine avant la date de l'événement.",
    remote_photo_url: "https://media-cdn.tripadvisor.com/media/photo-s/0c/cf/4a/dc/coin-salon-piano-au-chateau.jpg"
    )
  space_one.save!

puts 'Finished!'










