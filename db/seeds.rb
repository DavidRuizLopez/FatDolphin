require 'faker'

User.destroy_all
Gear.destroy_all

cat = ['camera', 'tripods', 'lents']

david = User.create!(email: 'david@gmail.com', password: '123456')
bea = User.create!(email: 'bea@gmail.com', password: '123456')
rado = User.create!(email: 'rado@gmail.com', password: '123456')
alán = User.create!(email: 'alan@gmail.com', password: '123456')

User.all.each do |u|
  3.times do
    gear = Gear.create!(name: Faker::Beer.name, price: 101, description: Faker::Movies::StarWars.quote, category: cat.sample, user: u)
  end
end
