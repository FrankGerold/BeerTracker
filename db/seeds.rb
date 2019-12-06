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

p2 = Floor.create(building: "Prospect", floor_number: 2)
p3 = Floor.create(building: "Prospect", floor_number: 3)
p4 = Floor.create(building: "Prospect", floor_number: 4)
p5 = Floor.create(building: "Prospect", floor_number: 5)
p6 = Floor.create(building: "Prospect", floor_number: 6)
p7 = Floor.create(building: "Prospect", floor_number: 7)
p8 = Floor.create(building: "Prospect", floor_number: 8)
p9 = Floor.create(building: "Prospect", floor_number: 9)
s2 = Floor.create(building: "Sands", floor_number: 2)
s3 = Floor.create(building: "Sands", floor_number: 3)
s4 = Floor.create(building: "Sands", floor_number: 4)
s5 = Floor.create(building: "Sands", floor_number: 5)
s6 = Floor.create(building: "Sands", floor_number: 6)
s7 = Floor.create(building: "Sands", floor_number: 7)
s8 = Floor.create(building: "Sands", floor_number: 8)
s9 = Floor.create(building: "Sands", floor_number: 9)

# 10.times do
#     Keg.create({
#         name: Faker::Movies::StarWars.call_sign,
#         beer_type: Faker::Movies::StarWars.call_squadron
#     })
# end

mos = Keg.create(
  name: "Mosaic Session IPA",
  beer_type: "India Pale Ale",
  abv: 5.5,
  ibu: 45,
  desc: "Before the Mosaic hop even had a name (back when it was just known as “HBC 369”), our brewers couldn’t wait to get their hands on some. Mosaic Session IPA is bursting with vibrant grapefruit aroma and flavors of citrus and tropical fruit. Our signature dry-hopping technique delivers an incredibly drinkable lower ABV beer without sacrificing hop appeal. From a small test batch to the bottle you now hold in your hands, this isn’t a one-and-done beer. Sit back, have a few, and enjoy your session.",
  photo_url: "https://www.karlstrauss.com/wp-content/uploads/2017/01/KS-BeerDetail-2017-01-MOS.png"
)

pum = Keg.create(
  name: "Shipyard Pumpkinhead Ale",
  beer_type: "Wheat Ale",
  abv: 4.5,
  ibu: 18,
  desc: "Pumpkinhead is a crisp, refreshing wheat ale with delightful aromatics and subtle spice flavor.

  To celebrate the fall season, we enhance the pumpkin flavor with a proprietary blend of spices including cinnamon and nutmeg.",
  photo_url: "https://shipyard.com/wp-content/uploads/2018/02/pumpkinheadwcan-1.png"
)

gos = Keg.create(
  name: "Goose IPA",
  beer_type: "India Pale Ale",
  abv: 5.9,
  ibu: 55,
  desc: "Goose Island’s flagship IPA is a six-time medal winner at the Great American Beer Festival. We’ve taken the traditional English Style and created our own fuller flavored IPA with bright citrus aromas and a bold hop finish. With hoppy, bold, and smooth flavor, Goose IPA is the perfect beer for hopheads and discovery drinkers alike.",
  photo_url: "https://www.gooseisland.com/assets/images/beers/goose-ipa/IPA_HERO_CAN.png"
)

brok = Keg.create(
  name: "Brooklyn Lager",
  beer_type: "American Amber Lager",
  abv: 5.2,
  ibu: 33,
  desc: "Our award-winning flagship stands tall as an instigator of the craft beer revolution. Brooklyn Lager debuted at a time when American lagers were the laughingstock of the beer world, and proved that American brewing was a force to be reckoned with. If you're looking for the dry-hopped amber lager that changed the world, look no further.",
  photo_url: "https://brooklynbrewery.com/system/beers/1_shelf_lager-12oz-Beer-Page_original.png?1537982456"
)

dos = Keg.create(
  name: "Dos Equis Lager Especial",
  beer_type: "American Adjunct Lager / Pilsner",
  abv: 4.2,
  ibu: 10,
  desc: "Dos Equis Lager Especial is a golden pilsner-style beer made from pure spring water and the choicest hops. With a balanced composition and a smooth, clean finish, it’s the party guest who is always invited and never overstays his welcome.",
  photo_url: "https://dosequis.com/wp-content/uploads/2019/01/lager-bottle.png"
)

k4 = KegFloor.create(
  floor: p4,
  keg: mos,
  user: frank
)

k5 = KegFloor.create(
  floor: p5,
  keg: mos,
  user: frank
)

k6 = KegFloor.create(
  floor: p6,
  keg: mos,
  user: frank
)

k7 = KegFloor.create(
  floor: p7,
  keg: pum,
  user: frank
)

k9 = KegFloor.create(
  floor: p9,
  keg: mos,
  user: frank
)


k6s = KegFloor.create(
  floor: s6,
  keg: gos,
  user: frank
)

k7s = KegFloor.create(
  floor: s7,
  keg: brok,
  user: frank
)

k8s = KegFloor.create(
  floor: s8,
  keg: gos,
  user: frank
)

k9s = KegFloor.create(
  floor: s9,
  keg: dos,
  user: frank
)

30.times do
    Cup.create({
        rating: rand(1..10),
        keg: Keg.all.sample,
        user: User.all.sample
    })
end

# 50.times do
#     KegFloor.create({
#         floor: Floor.all.sample,
#         keg: Keg.all.sample,
#         user: User.all.sample
#     })
# end
