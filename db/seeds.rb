# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create!(first_name: 'Maria', last_name: 'Nery', location: 'Lisbon', language: 'English, Portugese', phone: '+351 91 515 6924', email: 'mnvnery@gmail.com', password: 'test123', birthdate: Date.new(1997,7,23))
User.create!(first_name: 'Sini', last_name: 'Ninkovic', location: 'San Francisco', language: 'English, German, Croatian', phone: '+1 510 220 9753', email: 'sini.sn.ninkovic@gmail.com', password: 'test123', birthdate: Date.new(1986,10,25))
User.create!(first_name: 'Branca', last_name: 'Chiotte', location: 'Lisbon', language: 'English, Portugese', phone: '+351 917420504', email: 'brancachiotte@gmail.com', password: 'test123', birthdate: Date.new(1987,7,11))

# /personalities  GET personalities index
# /personalities/:id  GET personalities show
# /personalities/:personality_id/bookings/new GET bookings  new
# /personalities/:personality_id/bookings POST  bookings  create

user = User.find_by(first_name: 'Maria')
Personality.create(name: 'Maria the coder', description: 'just some text', price_hour: 5, user: user)
