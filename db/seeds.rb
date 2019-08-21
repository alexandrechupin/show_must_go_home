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
  )
  user.save!
end
puts 'Finished!'

puts 'Creating 2 fake spaces...'
  space_one = Space.new(
    user_id: 2,
    name: "Salon musical",
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
  user.save!

  space_one = Space.new(
    user_id: 3,
    name: "Jardin pour concert",
    address: "56 rue des prés",
    city: "Neuilly",
    zipcode: "92200",
    equipment: "chaises pliantes",
    event_type: "tous concerts",
    place_type: "jardin",
    capacity: 100,
    description: "Grand jardin ombragés pouvant accueillir des événements de début juin à fin septembre.",
    policy: "Annulation possible jusqu'à une semaine avant la date de l'événement.",
    photo: "http://lamaisongueth.eu/wordpress/wp-content/uploads/2016/07/IMG_0881-960x500.jpg"
    )
  user.save!

puts 'Finished!'










