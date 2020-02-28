# require 'faker'

Gear.destroy_all
User.destroy_all


david = User.create!(username: "Master Chief", email: 'david@gmail.com', password: '123456')
bea = User.create!(username: "Liutenant Commander", email: 'bea@gmail.com', password: '123456')
rado = User.create!(username: "Capitan General", email: 'rado@gmail.com', password: '123456')
alán = User.create!(username: "The Boss", email: 'alan@gmail.com', password: '123456')

# User.all.each do |u|
#   3.times do
#     gear = Gear.create!(name: Faker::Beer.name, price: 101, description: Faker::Movies::StarWars.quote, category: Gear.categories.sample, user: u)
#   end
# end


# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

granpepe = User.create(username: "Gran Pepe", email: "granpepe@gmail.com", password: "123456")

file_1 = URI.open('https://www.bhphotovideo.com/images/images2500x2500/canon_1263c006_eos_80d_dslr_camera_1225877.jpg')
gear_1 = Gear.create!(name: "Nikon Z6", price: 25, description: "Brand new, haven't used it yet.", category: "cameras", user: granpepe, address: "Plaza palmeras 6")
gear_1.photo.attach(io: file_1, filename: 'nes.jpg', content_type: 'image/jpg')

file_2 = URI.open("https://http2.mlstatic.com/vendo-nikon-af-s-fx-nikkor-50mm-f18g-D_NQ_NP_907605-MLA29073417573_122018-F.jpg")
gear_2 = Gear.create!(name: "Nikon AF-S FX", price: 25, description: "Incredible, get it with my camera, they mix like peanut butter and jelly.", category: "lenses", user: granpepe, address: "Plaza palmeras 6")
gear_2.photo.attach(io: file_2, filename: 'nes.jpg', content_type: 'image/jpg')

file_3 = URI.open("https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/12/2016/08/Novo-Explora-T10.jpg")
gear_3 = Gear.create!(name: "Novo explora t5", price: 25, description: "Great stuff, trust me.", category: "tripods", user: granpepe, address: "Plaza palmeras 6")
gear_3.photo.attach(io: file_3, filename: 'nes.jpg', content_type: 'image/jpg')

file_4 = URI.open("https://2.img-dpreview.com/files/p/articles/2697407899/dji-mavic-mini0348.jpeg")
gear_4 = Gear.create!(name: "DJI Mavic Mini Foldable", price: 25, description: "Flies like a bird, great to spy on the neighbours.", category: "drones", user: granpepe, address: "Plaza palmeras 6")
gear_4.photo.attach(io: file_4, filename: 'nes.jpeg', content_type: 'image/jpeg')



jason = User.create(username: "Jason", email: "jason@gmail.com", password: "123456")

file_5 = URI.open("https://www.galaxyandorra.es/10711-large_default/fujifilm-x-t30-negro.jpg")
gear_5 = Gear.create!(name: "Fujifilm X-T30", price: 23, description: "Works great, only a few scratches from regular use.", category: "cameras", user: jason, address: "Calle Embajadores 130")
gear_5.photo.attach(io: file_5, filename: 'nes.jpg', content_type: 'image/jpg')

file_6 = URI.open("https://www.canon.es/media/EF_50mm_f1.2L_USM_Default_tcm86-939661.jpg")
gear_6 = Gear.create!(name: "canon ef 50mm", price: 5, description: "It's broken, but it's cheap.", category: "lenses", user: jason, address: "Calle Embajadores 100")
gear_6.photo.attach(io: file_6, filename: 'nes.jpg', content_type: 'image/jpg')



terminator = User.create(username: "Terminator", email: "terminator@gmail.com", password: "123456")

file_7 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Leica_M3_mg_3848.jpg/1200px-Leica_M3_mg_3848.jpg")
gear_7 = Gear.create!(name: "Leica M3", price: 5, description: "Went to the past and stole this from a hipster, it kinda sucks.", category: "cameras", user: terminator, address: "Calle Embajadores 110")
gear_7.photo.attach(io: file_7, filename: 'nes.jpg', content_type: 'image/jpg')

file_8 = URI.open("https://www.canon.es/media/EF_75-300mm_f4-5.6_III_Default_tcm86-939770.jpg")
gear_8 = Gear.create!(name: "Canon ef 75-300mm", price: 5, description: "I'll be back... with more of this ones because they are a-ma-zing!", category: "lenses", user: terminator, address: "Calle Embajadores 120")
gear_8.photo.attach(io: file_8, filename: 'nes.jpg', content_type: 'image/jpg')

fernando = User.create(username: "Fernando", email: "fernando@gmail.com", password: "123456")

file_9 = URI.open("https://i.blogs.es/40eaf7/sony_a7iii_prueba-001/450_1000.jpg")
gear_9 = Gear.create!(name: "Sony A7 III", price: 19, description: "It's new, my granma gave me this for christmas but I don't like photography.", category: "cameras", user: fernando, address: "Calle Embajadores")
gear_9.photo.attach(io: file_9, filename: 'nes.jpg', content_type: 'image/jpg')



charlotte = User.create(username: "Charlotte", email: "charlotte@gmail.com", password: "123456")

file_10 = URI.open("https://images-na.ssl-images-amazon.com/images/I/81eSYgc0xNL._SX425_.jpg")
gear_10 = Gear.create!(name: "Blackmagick poket cinema camera", price: 30, description: "I use it all the time! great image and everything works!.", category: "cameras", user: charlotte, address: "Calle Juan de Mariana")
gear_10.photo.attach(io: file_10, filename: 'nes.jpg', content_type: 'image/jpg')

file_11 = URI.open("https://i.ytimg.com/vi/qi8qre9FO18/maxresdefault.jpg")
gear_11 = Gear.create!(name: "Bvanguard VEO", price: 17, description: "It doesn't fly, but you can hold it as a camera, the stabilizer is superb.", category: "drones", user: charlotte, address: "Calle Embajadores")
gear_11.photo.attach(io: file_11, filename: 'nes.jpg', content_type: 'image/jpg')



natalie = User.create(username: "Natalie", email: "natalie@gmail.com", password: "123456")

file_12 = URI.open("https://static.bhphoto.com/images/images2500x2500/1382572231_1010691.jpg")
gear_12 = Gear.create!(name: "Manfrotto 190XPro4", price: 15, description: "This thing can hold an elephant!", category: "tripods", user: natalie, address: "Calle Embajadores")
gear_12.photo.attach(io: file_12, filename: 'nes.jpg', content_type: 'image/jpg')

file_13 = URI.open("https://i1.wp.com/puntoracing.com/wp-content/uploads/2016/09/djimavicprofeat-800x420.jpg")
gear_13 = Gear.create!(name: "Mavic Pro 420", price: 45, description: "Best drone in the market, battery don't hold as much but image is great!.", category: "drones", user: natalie, address: "Calle Embajadores")
gear_13.photo.attach(io: file_13, filename: 'nes.jpg', content_type: 'image/jpg')

