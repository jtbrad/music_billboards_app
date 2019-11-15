# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def generate_new_db
  i = 1

  Artist.all.destroy_all
  
  10.times do
    artist = Artist.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      age: rand(25..50),
      city: Faker::Address.city,
      instrument: Faker::Music.instrument
    )
  
    5.times do
      artist.songs.create(
        title: "Song #{i}",
        genre: Faker::Music.genre
      )
      i += 1
    end
    
  end

  puts "New data entered."

end

generate_new_db