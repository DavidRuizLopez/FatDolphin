# require 'faker'

User.destroy_all
Gear.destroy_all


david = User.create!(username: "Master Chief", email: 'david@gmail.com', password: '123456')
bea = User.create!(username: "Liutenant Commander", email: 'bea@gmail.com', password: '123456')
rado = User.create!(username: "Capitan General", email: 'rado@gmail.com', password: '123456')
alán = User.create!(username: "The Boss", email: 'alan@gmail.com', password: '123456')

# User.all.each do |u|
#   3.times do
#     gear = Gear.create!(name: Faker::Beer.name, price: 101, description: Faker::Movies::StarWars.quote, category: Gear.categories.sample, user: u)
#   end
# end

granpepe = User.create(username: "Gran Pepe", email: "granpepe@gmail.com", password: "123456")
Gear.create!(name: "Nikon Z6", price: 25, description: "Brand new, haven't used it yet.", category: "cameras", user: granpepe)
Gear.create!(name: "Nikon AF-S FX", price: 25, description: "Incredible, get it with my camera, they mix like peanut butter and jelly.", category: "lenses", user: granpepe)
Gear.create!(name: "Novo explora t5", price: 25, description: "Great stuff, trust me.", category: "tripods", user: granpepe)
Gear.create!(name: "DJI Mavic Mini Foldable", price: 25, description: "Flies like a bird, great to spy on the neighbours.", category: "drones", user: granpepe)


jason = User.create(username: "Jason", email: "jason@gmail.com", password: "123456")
Gear.create!(name: "Fujifilm X-T30", price: 23, description: "Works great, only a few scratches from regular use.", category: "cameras", user: jason)
Gear.create!(name: "canon ef 50mm", price: 5, description: "It's broken, but it's cheap.", category: "lenses", user: jason)


terminator = User.create(username: "Terminator", email: "terminator@gmail.com", password: "123456")
Gear.create!(name: "Leica M3", price: 5, description: "Went to the past and stole this from a hipster, it kinda sucks.", category: "cameras", user: terminator)
Gear.create!(name: "Canon ef 75-300mm", price: 5, description: "I'll be back... with more of this ones because they are a-ma-zing!", category: "lenses", user: terminator)


fernando = User.create(username: "Fernando", email: "fernando@gmail.com", password: "123456")
Gear.create!(name: "Sony A7 III", price: 19, description: "It's new, my granma gave me this for christmas but I don't like photography.", category: "cameras", user: fernando)


charlotte = User.create(username: "Charlotte", email: "charlotte@gmail.com", password: "123456")
Gear.create!(name: "Blackmagick poket cinema camera", price: 30, description: "I use it all the time! great image and everything works!.", category: "cameras", user: charlotte)
Gear.create!(name: "Bvanguard VEO", price: 17, description: "It doesn't fly, but you can hold it as a camera, the stabilizer is superb.", category: "drones", user: charlotte)

natalie = User.create(username: "Natalie", email: "natalie@gmail.com", password: "123456")
Gear.create!(name: " Manfrotto 190XPro4", price: 15, description: "This thing can hold an elephant!", category: "tripods", user: natalie)
Gear.create!(name: "Mavic Pro 420", price: 45, description: "Best drone in the market, battery don't hold as much but image is great!.", category: "drones", user: natalie)


