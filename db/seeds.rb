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

user1 = User.find_by(first_name: 'Maria')
Personality.create(name: 'Maria the coder', description: 'just some text', price_hour: 5, image_url: 'https://images.theconversation.com/files/245935/original/file-20181116-194488-19it793.jpg?ixlib=rb-1.1.0&rect=0%2C124%2C1000%2C499&q=45&auto=format&w=1356&h=668&', location: '16 Villa Gaudelet, Paris',user: user1)
user2 = User.find_by(first_name: 'Sini')
Personality.create(name: 'Sini the tennis player', description: 'just some loooooooooooooooooooooooooong text', price_hour: 5, image_url: 'https://scontent.flis8-1.fna.fbcdn.net/v/t1.0-9/106000728_10158294745504705_7167448175874583533_n.jpg?_nc_cat=103&_nc_sid=0debeb&_nc_ohc=xqJRe-yePhwAX_yGwaE&_nc_ht=scontent.flis8-1.fna&oh=5f3acfda9a3862e8298b345c9cbae538&oe=5F6BC42B', location: '6049 Fairlane Drive, 94611, Oakland, CA, USA', user: user2)

