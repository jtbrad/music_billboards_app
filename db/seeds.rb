# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Artist.all.each do |artist|
  artist.destroy
end

10.times do
  Artist.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: rand(25..50),
    city: Faker::Address.city,
    instrument: Faker::Music.instrument
  )
end