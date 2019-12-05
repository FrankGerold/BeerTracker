# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Keg.destroy_all
Floor.destroy_all
Cup.destroy_all
KegFloor.destroy_all

# AWESOME SEEDS TO FOLLOW 

frank = User.create(name: "Frank", bio: "Wu-Tang Clan ain't nothing to $(*& with", password: '123')
dominic = User.create(name: "Dominic", bio: "Hella Hella Hella", password: '123')
tristan = User.create(name: "Tristan", bio: "Wanna order delievery?", password: '123')
james = User.create(name: "James", bio: "I don't want to eat lunch", password: '123')
soner = User.create(name: "Soner", bio: "I am taller than you", password: '123')
gena = User.create(name: "Gena", bio: "NO MORE RPGS!", password: '123')
fanzhong = User.create(name: "FanZhong", bio: "MOAR RPGS!", password: '123')
jakari = User.create(name: "Jakari", bio: "Pass", password: '123')
griffin = User.create(name: "Griffin", bio: "All about that codewars life", password: '123')
samir = User.create(name: "Samir", bio: "Gym Tan Laundry bro", password: '123')
sadia = User.create(name: "Sadia", bio: "Sunrise melt + Bathroom cry = life", password: '123')
conrad = User.create(name: "Conrad", bio: "Cereal is the most important meal of the day", password: '123')
imade = User.create(name: "Imade", bio: "Soooooo..........", password: '123')
bihelca = User.create(name: "Bihelca", bio: "Stay away from my spices", password: '123')

10.times do
    User.create({
        name: Faker::Movies::StarWars.character,
        bio: Faker::Movies::StarWars.quote,
        password: '123'
    })
    Keg.create({
        name: Faker::Movies::StarWars.call_sign,
        beer_type: Faker::Movies::StarWars.call_squadron
    })
    Floor.create({
        building: Faker::Movies::StarWars.planet,
        floor_number: rand(1..10)
    })
end
30.times do
    Cup.create({
        rating: rand(1..10),
        keg: Keg.all.sample,
        user: User.all.sample
    })
end
50.times do
    KegFloor.create({
        floor: Floor.all.sample,
        keg: Keg.all.sample,
        user: User.all.sample
    })
end
