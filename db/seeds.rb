# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create!(first_name: 'Maria', last_name: 'Nery', location: '16 Villa Gaudelet, Paris', language: 'English, Portugese', phone: '+351 91 515 6924', email: 'mnvnery@gmail.com', password: 'test123', birthdate: Date.new(1997,7,23), image_url: 'https://avatars1.githubusercontent.com/u/67118326?v=4' )
User.create!(first_name: 'Sini', last_name: 'Ninkovic', location: '6049 Fairlane Drive, 94611, Oakland, CA, USA', language: 'English, German, Croatian', phone: '+1 510 220 9753', email: 'sini.sn.ninkovic@gmail.com', password: 'test123', birthdate: Date.new(1986,10,25), image_url: 'https://avatars3.githubusercontent.com/u/67879815?v=4' )
User.create!(first_name: 'Branca', last_name: 'Chiotte', location: 'Lisbon', language: 'English, Portugese', phone: '+351 917420504', email: 'brancachiotte@gmail.com', password: 'test123', birthdate: Date.new(1987,7,11), image_url: 'https://avatars2.githubusercontent.com/u/68083103?v=4' )
User.create!(first_name: 'Adriano', last_name: 'Leite', location: 'Bernardim Ribeiro, 32 Lisboa', language: 'English, Portugese', phone: '+351 935791737', email: 'adrianobleite@gmail.com', password: 'test123', birthdate: Date.new(1977,10,12), image_url: 'https://avatars0.githubusercontent.com/u/67058933?s=400&u=fbdcb63272230f8683214d173631794158da9453&v=4' )

# /personalities  GET personalities index
# /personalities/:id  GET personalities show
# /personalities/:personality_id/bookings/new GET bookings  new
# /personalities/:personality_id/bookings POST  bookings  create


Personality.create(name: 'Tennis player', description: "Want to stretch those coder legs during a game of tenis? Want to be all the rage for the next batch tournament? Rent me now for some good racket game!", price_hour: 5, image_url: 'https://scontent.flis8-1.fna.fbcdn.net/v/t1.0-9/106000728_10158294745504705_7167448175874583533_n.jpg?_nc_cat=103&_nc_sid=0debeb&_nc_ohc=xqJRe-yePhwAX_yGwaE&_nc_ht=scontent.flis8-1.fna&oh=5f3acfda9a3862e8298b345c9cbae538&oe=5F6BC42B', user: User.find_by(first_name: 'Sini'))
Personality.create(name: 'Plant Expert', description: "Have you bought a million plants during quarantine? 🍀🌿🌵 Are they all now on their death beds but you still have a glimmer of hope? I'll come to your place, do everything I can to help your babies and tip you on how to keep them green and lovely! 🌴", price_hour: 10, image_url: 'https://previews.dropbox.com/p/thumb/AA5yraWA7xcTJom1aqJZUeowvFjgtx5ixilQDSUYVupOgXhKL5cmUScVlxkjJaCeRe8_03QffyKtMgkt7C8KHU0Wvef2UF4rsMGqMKTyEuNDoGZeAXhSzZ14bjyUiG7EXljphqK6dkP4908ZK3FYI-pN4nq2XmCr6yNbNHHsVFCveaQNikAh84Mk92369d41M02zBOpFe4IJ0WPq3WussjMxShhJAOz7BJJXwcs8tIJAC258k81GZGnR6I2J6M02j6qXXG0W31N0MAe_i2o5EhwmM7QTpoe36cKOX3nLmt-vwArvNOv-wx1uJii7ftJ4SOIM79vllKngbP0cYXRttjwrwGLeONlSZq_jTzAKCScaug/p.jpeg?fv_content=true&size_mode=5',user: User.find_by(first_name: 'Maria'))
Personality.create(name: 'Beer Buddy', description: "Looking for just a mate to toast with at the end of a nightmarish coding day? 🍻 I can take you to all the cool spots for beers or cocktails. I won't even charge for this, maybe first round is on you?", price_hour: 0, image_url: 'https://previews.dropbox.com/p/thumb/AA7acsJbLt_FJJEaLj5HiHTcBFKKJOP_H23RmjpNvZpyt6lezJaD-05qwGFCga6KqBuWLh3NzOBFvkaxLVuK1kIewcni3CGZrWbM48nCySnzI6MMRb01r_UqquAO0McilRfYfp8dNRN5W8CZ5DtknhpuG36yznWfHWrjq4gbd5WbCE8rNKO14HuFKeq1tzdGboOW3mzz4AaKAJX6dif1yKntwgZMCR3eUNPy-xU4wiz5gwnXvuUBsmbH7xRR1C2OefMWFM3NvEyt4U3HMDFnaVEoqa3ASzjuOHYcs2Jgn2OVI2Eb7ko_A1myBgblH63FgqhbuofhZEygKelajxWCY9j4iEVMalBLrhebthnCTOmMzQ/p.jpeg?fv_content=true&size_mode=5', user: User.find_by(first_name: 'Maria'))
Personality.create(name: 'Beauty Queen', description: "Are you in desperate need of a self-care sunday but want to be shown the ropes by a beauty expert like myself? Cmon over and we'll pamper together! ✨🧖🏻‍♀️No shame in looking your best", price_hour: 50, image_url: "https://previews.dropbox.com/p/thumb/AA7BPiU3mMK9d-q9yY6CPPgBj3Y8ge9O_L_UV4knGvsupqIMCb_O2vVTNzSKnnjlIt9unzWs4P8LOUpKhFIgfjLi9lgA8jp-zwH7TjuogKMatvX59n2FE4ttJTF4RvySx73s0jYIdG0bE98sXhBFLInDuJZPHn7x3DLrdOQtjOknVCZi1Vfl3alzow_7u807_h29KXcE_04DiXRJOLYjR7V3zg1n-gUxFaHTbcHSy51gS4CgvfpFYb7it0Bc2l4uZ9iqC1rTUJ2p-od5OZlG250ubSGG0fHYbIKD3MXdwKU5997r4KedDhcYCgWqpgGAj3XKGW7Y1Z0v_p2m7A-KUdEgMVz5MYoJsIjI6qZIWbMc7w/p.jpeg?fv_content=true&size_mode=5" , user: User.find_by(first_name: 'Maria'))
Personality.create(name: 'Adventurer', description: "Put your safety hats on! ⛑ You're in for a ride. Any thrill seekers out there join me for anything from paragligding 🪂, to rafting 🚣‍♀️, to climbing 🧗‍♀️", price_hour: 10, image_url: 'https://previews.dropbox.com/p/thumb/AA6SYgUjp9jC8r5joQ0t1pExZrSe9wwP089kEu7EB_OmksPC2wWTsT3w1i5HQhQBPnqaz7Uogzmn61KEXFhTWSHCrHxKA3tj6YDEuyLvFppJzL2qDnD5R9SQKCklojKbbxDdWVcbAQ-36GHgIe9bD0Yd1hJc0H5QQS-T4M8Z3QvAmaC52WPhsNBMWq1XFZALml4EAUAOToKdx2UE2c3j9J-yj_3cqQgUHJiT3qn2a_bqDwjj-sJr7kwlIf-oqVTytRhhq4PaIJQ3rDdLTPVjcompSfULNwHXnid2bYIpZZ1rfOCUfkZIjHlkOQAn9E5ijjYZHfOZptLBqJJRsX7sOV2fvYmBhPGMjOClUPyJMPER-Q/p.jpeg?fv_content=true&size_mode=5',user: User.find_by(first_name: 'Maria'))


