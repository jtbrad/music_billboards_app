# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def generate_billboards
  Billboard.destroy_all
  @top_10 = Billboard.create(name: "Top 10")
  @top_50 = Billboard.create(name: "Top 50")
end

def generate_song
  @song = @artist.songs.create(
    title: "Song #{Song.count + 1}",
    genre: Faker::Music.genre
  )
end

def generate_artists
  Artist.all.destroy_all
  
  10.times do
    @artist = Artist.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      age: rand(25..50),
      city: Faker::Address.city,
      instrument: Faker::Music.instrument
    )
  
    5.times do
      generate_song
    end
    
  end

end

def generate_new_db
  generate_billboards
  generate_artists
  puts "New data entered."
end

generate_new_db