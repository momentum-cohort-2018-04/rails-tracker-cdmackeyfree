# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
    Dog.create!(
        name: Faker::Dog.name,
        breed: Faker::Dog.breed,
        sound: Faker::Dog.sound, 
        age: Faker::Dog.age,
        gender: Faker::Dog.gender,
        coat_length: Faker::Dog.coat_length,
        size: Faker::Dog.size
      )
end