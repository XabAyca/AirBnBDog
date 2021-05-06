# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dogsitter.destroy_all
Dog.destroy_all
City.destroy_all

10.times do |i|
  City.create(city_name:Faker::JapaneseMedia::Naruto.village)
  puts "#{i+1} cities created"
end

puts "*"*20

10.times do |i|
  Dogsitter.create(first_name:Faker::Games::SuperMario.character,last_name:Faker::JapaneseMedia::DragonBall.character,age:rand(6..99),city_id:City.all.sample.id)
  puts "#{i+1} dogsitters created"
end

puts "*"*20

10.times do |i|
  Stroll.create(date:Faker::Date.between(from: 300.days.ago, to: Date.today),dogsitter_id:Dogsitter.all.sample.id)
  puts "#{i+1} strolls created"
end

puts "*"*20

10.times do |i|
  Dog.create(breed:Faker::Creature::Dog.breed,name:Faker::Creature::Dog.name,stroll_id:Stroll.all.sample.id,city_id:City.all.sample.id)
  puts "#{i+1} dog created"
end

puts "*"*20