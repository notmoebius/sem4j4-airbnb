# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all
Stroll.destroy_all

# seed dog
20.times do
  Dog.create!(
      dogname: Faker::Name.middle_name
  )
end

# seed dogsitter
5.times do
  Dogsitter.create!(
    name: Faker::Name.name
  )
end

# seed pour les city
5.times do
  City.create!(
    city_name: Faker::Address.city
  )
end

# send pour les stroll
100.times do
  Stroll.create!(
    dog_id: Dog.all.sample.id,
    dogsitter_id: Dogsitter.all.sample.id,
    city_id: City.all.sample.id
  )
end
