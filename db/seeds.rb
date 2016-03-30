# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
band_list = [
  [ "Future Islands", "Rock", "Maryland", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 1, "Band" ],
  [ "Boy", "Rock", "Germany", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 2, "Band" ],
  [ "The Kickback", "Pop", "Illinois", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 3, "Band" ],
  [ "Jack Hotel", "Pop", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 4, "Band" ],
  [ "Twinsmith", "Rock", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 5, "Band" ],
  [ "AZP", "Folk", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 6, "Band" ]
]

band_list.each do |name, genre, origin, website, bio, image, headline_order|
  Band.create( name: name, genre: genre, origin: origin, website: website, bio: bio, image: image, headline_order: headline_order)
end

comedian_list = [
  [ "Hank Misterson", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 1],
  [ "Larissa Mursterson", "Germany", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 2],
  [ "Helen Masterson", "Illinois", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 3]
]
comedian_list.each do |name, origin, website, bio, image, headline_order|
  Band.create( name: name, origin: origin, website: website, bio: bio, image: image, headline_order: headline_order)
end
