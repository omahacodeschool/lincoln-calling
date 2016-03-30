# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create! :id => 1, :first_name => 'John', :last_name => 'Testuser', :email => 'testuser@testuser.com', blurb: 'blurb blurb blurb blurb blurb', remote_profile_pic_url: "http://bloximages.chicago2.vip.townnews.com/journalstar.com/content/tncms/assets/v3/editorial/e/85/e8588925-93ad-5923-ad37-7b1fbc25d5e4/5022d8cf9445e.preview-620.jpg",:password => 'topsecret', :password_confirmation => 'topsecret'

# band_list = [
#   [ 1,"Future Islands", "Rock", "Maryland", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 1, "Band" ],
#   [ 2,"Boy", "Rock", "Germany", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 2, "Band" ],
#   [ 3,"The Kickback", "Pop", "Illinois", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 3, "Band" ],
#   [ 4,"Jack Hotel", "Pop", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 4, "Band" ],
#   [ 5,"Twinsmith", "Rock", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 5, "Band" ],
#   [ 6,"AZP", "Folk", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 6, "Band" ]
# ]

# band_list.each do |id, name, genre, origin, website, bio, image, headline_order|
#   Band.create(id: id, name: name, genre: genre, origin: origin, website: website, bio: bio, image: image, headline_order: headline_order)
# end

# comedian_list = [
#   [ 7,"Hank Misterson", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 1],
#   [ 8, "Larissa Mursterson", "Germany", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 2],
#   [ 9, "Helen Masterson", "Illinois", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 3]
# ]
# comedian_list.each do |id, name, origin, website, bio, image, headline_order|
#   Comedian.create(id:id, name: name, origin: origin, website: website, bio: bio, image: image, headline_order: headline_order)
# end

# venue_list = [
#   [ 1,"The Bourbon", "125 N First Street", "bio bio bio bio bio bio bio bio", "/assets/Bourbon_Theater.png", 40.8134, 96.7006],
#   [ 2,"Duffy's Tavern", "125 N Second Street", "bio bio bio bio bio bio bio bio", "/assets/Bourbon_Theater.png", 40.8138, 96.7007],
#   [ 3,"Yia Yia's Pizza", "125 N Third Street", "bio bio bio bio bio bio bio bio", "/assets/Bourbon_Theater.png", 40.8140, 96.7008]
# ]
# venue_list.each do |id, name, address, info, img, coordinates_latitude, coordinates_longitude|
#   Venue.create(id: id, name: name, address: address, info: info, img: img, coordinates_latitude: coordinates_latitude, coordinates_longitude: coordinates_longitude)
# end

# feature_list = [
#   ["Test Article 1: A Long Titled Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg","2016-05-26 21:55:19"],
#   ["Test Article 2", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg","2016-08-26 21:55:19"],
#   ["Test Article 3 A Very Fascinating Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg","2016-05-15 21:55:19"]
# ]
# feature_list.each do |title, user_id, article_content, image, publish_date_time|
#   Feature.create(title: title, user_id: user_id, article_content: article_content, image: image, publish_date_time: publish_date_time)
# end

# faq_list = [
#   ["Test FAQ 1 Question Question", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content","2016-05-26 21:55:19"],
#   ["Test FAQ 2 Question Question Question Question", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content","2016-08-26 21:55:19"],
#   ["Test FAQ 3 Question Question", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content","2016-05-15 21:55:19"]
# ]
# faq_list.each do |title, user_id, article_content, publish_date_time|
#   Faq.create(title: title, user_id: user_id, article_content: article_content, publish_date_time: publish_date_time)
# end

# visitor_list = [
#   ["Test Article 1: A Long Titled Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg","2016-05-26 21:55:19"],
#   ["Test Article 2", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg","2016-08-26 21:55:19"],
#   ["Test Article 3 A Very Fascinating Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg","2016-05-15 21:55:19"]
# ]
# visitor_list.each do |title, user_id, article_content, image, publish_date_time|
#   Visitor.create(title: title, user_id: user_id, article_content: article_content, image: image, publish_date_time: publish_date_time)
# end

# About.create(title: "About", user_id: 1, article_content: "content content content content content content content content content content content content content content content content content content content content content content content content content",publish_date_time: "2016-05-26 21:55:19")

# events_list = [
#   [1,1,21,"2016-10-06 19:00:00","2016-10-06 19:30:00"],
#   [2,2,18,"2016-10-06 21:00:00","2016-10-06 21:30:00"],
#   [3,3,0,"2016-10-06 22:00:00","2016-10-06 23:30:00"],
#   [4,1,21,"2016-10-07 19:00:00","2016-10-07 21:30:00"],
#   [5,2,18,"2016-10-07 21:00:00","2016-10-07 21:30:00"],
#   [6,1,21,"2016-10-07 22:00:00","2016-10-07 22:30:00"],
#   [7,3,0,"2016-10-08 19:00:00","2016-10-08 19:30:00"],
#   [8,2,18,"2016-10-08 21:00:00","2016-10-08 22:30:00"],
#   [9,1,21,"2016-10-08 22:00:00","2016-10-08 22:30:00"]
# ]
# events_list.each do |artist_id, venue_id, minimum_age, start_date_time, end_date_time|
#   Event.create(artist_id: artist_id, venue_id: venue_id, minimum_age: minimum_age, start_date_time: start_date_time, end_date_time: end_date_time)  
# end

# sponsors_list = [
#   ["Hudl", "google.com",true,"content content content content",1,"/assets/images/hudl.png"],
#   ["Omaha Code School", "google.com",true,"content content content content",2,"/assets/images/ocs.png"],
#   ["Firespring", "google.com",true,"content content content content",3,"/assets/images/firespring.png"],
#   ["Other Sponsor1", "google.com",false,"content content content content",4,"/assets/images/lincoln.png"],
#   ["Other Sponsor2", "google.com",false,"content content content content",4,"/assets/images/lincoln.png"],
#   ["Other Sponsor3", "google.com",false,"content content content content",4,"/assets/images/lincoln.png"]
# ]
# sponsors_list.each do |name, website, premier, description, sponsor_order, logo|
#   Sponsor.create(name: name, website: website, premier: premier, description:description, sponsor_order:sponsor_order, logo:logo)
# end

# tickets_list = [
#   ["Three Day Pass", "eventbrite.com", 3000, true],
#   ["Thursday", "eventbrite.com", 1500, false],
#   ["Friday", "eventbrite.com", 1500, false],
#   ["Saturday", "eventbrite.com", 1500, false]
# ]
# tickets_list.each do |name, link, price_in_cents, sold_out|
#   Ticket.create(name: name, link: link, price_in_cents: price_in_cents, sold_out: sold_out)
# end









