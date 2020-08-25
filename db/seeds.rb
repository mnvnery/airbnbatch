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
Personality.create(name: 'Maria the coder', description: 'just some text', price_hour: 5, image_url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.mindful.org%2Fdr-dan-siegel-hearing-yes-childs-brain%2F&psig=AOvVaw0ITXhAojh0dwsRD3ab1JGs&ust=1598457521052000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKj4orvctusCFQAAAAAdAAAAABAD', user: user1)
user2 = User.find_by(first_name: 'Sini')
Personality.create(name: 'Sini the tennis player', description: 'just some loooooooooooooooooooooooooong text', price_hour: 5, image_url: 'https://scontent.flis8-1.fna.fbcdn.net/v/t1.0-9/106000728_10158294745504705_7167448175874583533_n.jpg?_nc_cat=103&_nc_sid=0debeb&_nc_ohc=xqJRe-yePhwAX_yGwaE&_nc_ht=scontent.flis8-1.fna&oh=5f3acfda9a3862e8298b345c9cbae538&oe=5F6BC42B', user: user2)

