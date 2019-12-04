# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do 
    User.create({
        name: Faker::Movies::StarWars.character,
        bio: Faker::Movies::StarWars.quote
    })
    Keg.create({
        name: Faker::Movies::StarWars.call_sign, 
        beer_type: Faker::Movies::StarWars.call_squadron
    })
    Floor.create({
        building: Faker::Movies::StarWars.planet, 
        floor_number: rand(1..10).to_s
    })
    
    