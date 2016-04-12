# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create! :id => 1, :first_name => 'John', :last_name => 'Testuser', :email => 'testuser@testuser.com', blurb: 'blurb blurb blurb blurb blurb', remote_profile_pic_url: "http://bloximages.chicago2.vip.townnews.com/journalstar.com/content/tncms/assets/v3/editorial/e/85/e8588925-93ad-5923-ad37-7b1fbc25d5e4/5022d8cf9445e.preview-620.jpg",:password => 'topsecret', :password_confirmation => 'topsecret'

band_list = [
  [ 1,"Future Islands", "Rock", "Maryland", "google.com", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://c4.staticflickr.com/8/7674/17562456899_0d3dcd79f2_h.jpg", 1, "Band" ],
  [ 2,"Boy", "Rock", "Germany", "google.com", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://c4.staticflickr.com/8/7674/17562456899_0d3dcd79f2_h.jpg", 2, "Band" ],
  [ 3,"The Kickback", "Pop", "Illinois", "google.com", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://c4.staticflickr.com/8/7674/17562456899_0d3dcd79f2_h.jpg", 3, "Band" ],
  [ 4,"Jack Hotel", "Pop", "Nebraska", "google.com", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://c4.staticflickr.com/8/7674/17562456899_0d3dcd79f2_h.jpg", 4, "Band" ],
  [ 5,"Twinsmith", "Rock", "Nebraska", "google.com", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://c4.staticflickr.com/8/7674/17562456899_0d3dcd79f2_h.jpg", 5, "Band" ],
  [ 6,"AZP", "Folk", "Nebraska", "google.com", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://c4.staticflickr.com/8/7674/17562456899_0d3dcd79f2_h.jpg", 6, "Band" ]
]

band_list.each do |id, name, genre, origin, website, bio, image, headline_order|
  Band.create(id: id, name: name, genre: genre, origin: origin, website: website, bio: bio, remote_image_url: image, headline_order: headline_order)
end

comedian_list = [
  [ 7,"Hank Misterson", "Nebraska", "google.com", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://img.ccrd.clearchannel.com/media/mlib/2135/2014/07/default/jeremy_messersmith_0_1404235725.jpg", 1],
  [ 8, "Larissa Mursterson", "Germany", "google.com", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://img.ccrd.clearchannel.com/media/mlib/2135/2014/07/default/jeremy_messersmith_0_1404235725.jpg", 2],
  [ 9, "Helen Masterson", "Illinois", "google.com", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://img.ccrd.clearchannel.com/media/mlib/2135/2014/07/default/jeremy_messersmith_0_1404235725.jpg", 3]
]
comedian_list.each do |id, name, origin, website, bio, image, headline_order|
  Comedian.create(id:id, name: name, origin: origin, website: website, bio: bio, remote_image_url: image, headline_order: headline_order)
end

venue_list = [
  [ 1,"The Bourbon", "1415 O St, Lincoln, NE", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://inflatableferret.com/wp-content/uploads/2010/04/bourbon1.jpg", 40.813354, -96.700616, "http://bourbontheatre.com/", "http://i.imgur.com/Fxf20Oy.png"],
  [ 2,"Duffy's Tavern", "1412 E O St, Lincoln, NE", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://inflatableferret.com/wp-content/uploads/2010/04/bourbon1.jpg", 40.813794, -96.7007465, "http://duffyslincoln.com/", "http://i.imgur.com/jTQ0goI.png"],
  [ 3,"Yia Yia's Pizza", "1423 O St, Lincoln, NE", "Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.Lorem ipsum dolor sit amet, putent propriae adversarium mel an, congue legere suscipit his at. Nec oblique prompta ex. Utinam eirmod convenire mea te, sed sint urbanitas interesset ea. Cum dolor aliquip aliquando ad, in dicta cetero insolens pri. Ex pro vidit option definitionem.", "http://inflatableferret.com/wp-content/uploads/2010/04/bourbon1.jpg", 40.813265, -96.7004825, "https://www.facebook.com/yiayias/", "http://i.imgur.com/Pj3KcRP.png"]
]
venue_list.each do |id, name, address, info, img, latitude, longitude, website, map_icon|
  Venue.create(id: id, name: name, address: address, info: info, remote_img_url: img, website: website, latitude: latitude, longitude: longitude, remote_map_icon_url: map_icon)
end

feature_list = [
  ["Test Article 1: A Long Titled Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "http://farm4.staticflickr.com/3669/10346154844_3220d0685d_z.jpg","2016-05-26 21:55:19"],
  ["Test Article 2", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "http://farm4.staticflickr.com/3669/10346154844_3220d0685d_z.jpg","2016-08-26 21:55:19"],
  ["Test Article 3 A Very Fascinating Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "http://farm4.staticflickr.com/3669/10346154844_3220d0685d_z.jpg","2016-05-15 21:55:19"]
]
feature_list.each do |title, user_id, article_content, image, publish_date_time|
  Feature.create(title: title, user_id: user_id, article_content: article_content, remote_image_url: image, publish_date_time: publish_date_time)
end

faq_list = [
  ["Test FAQ 1 Question Question", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content","2016-05-26 21:55:19"],
  ["Test FAQ 2 Question Question Question Question", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content","2016-08-26 21:55:19"],
  ["Test FAQ 3 Question Question", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content","2016-05-15 21:55:19"]
]
faq_list.each do |title, user_id, article_content, publish_date_time|
  Faq.create(title: title, user_id: user_id, article_content: article_content, publish_date_time: publish_date_time)
end

visitor_list = [
  ["Test Article 1: A Long Titled Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "http://farm4.staticflickr.com/3687/12160205823_fafd2cb706_z.jpg","2016-05-26 21:55:19"],
  ["Test Article 2", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "http://farm4.staticflickr.com/3687/12160205823_fafd2cb706_z.jpg","2016-08-26 21:55:19"],
  ["Test Article 3 A Very Fascinating Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "http://farm4.staticflickr.com/3687/12160205823_fafd2cb706_z.jpg","2016-05-15 21:55:19"]
]
visitor_list.each do |title, user_id, article_content, image, publish_date_time|
  Visitor.create(title: title, user_id: user_id, article_content: article_content, remote_image_url: image, publish_date_time: publish_date_time)
end

About.create(title: "About", user_id: 1, article_content: "content content content content content content content content content content content content content content content content content content content content content content content content content",publish_date_time: "2016-05-26 21:55:19")

events_list = [
  [1,1,21,"2016-10-06 19:00:00","2016-10-06 19:30:00"],
  [2,2,18,"2016-10-06 21:00:00","2016-10-06 21:30:00"],
  [3,3,0,"2016-10-06 22:00:00","2016-10-06 23:30:00"],
  [4,1,21,"2016-10-07 19:00:00","2016-10-07 21:30:00"],
  [5,2,18,"2016-10-07 21:00:00","2016-10-07 21:30:00"],
  [6,1,21,"2016-10-07 22:00:00","2016-10-07 22:30:00"],
  [7,3,0,"2016-10-08 19:00:00","2016-10-08 19:30:00"],
  [8,2,18,"2016-10-08 21:00:00","2016-10-08 22:30:00"],
  [9,1,21,"2016-10-08 22:00:00","2016-10-08 22:30:00"]
]
events_list.each do |artist_id, venue_id, minimum_age, start_date_time, end_date_time|
  Event.create(artist_id: artist_id, venue_id: venue_id, minimum_age: minimum_age, start_date_time: start_date_time, end_date_time: end_date_time)  
end

sponsors_list = [
  ["Hudl", "google.com",true,"content content content content",1,"http://static1.squarespace.com/static/5080b308e4b0b2058063657f/t/54c6cd37e4b00fa947e1a926/1422314808226/hudl-metro-orange-large.png"],
  ["Omaha Code School", "google.com",true,"content content content content",2,"http://omahacodeschool.com/assets/ocs_star_top-81abf4e4d763d3373b406fe469150d8d.png"],
  ["Firespring", "google.com",true,"content content content content",3,"https://pbs.twimg.com/profile_images/378800000580583830/91d8cd8383218224472850aa6e836ff1_400x400.png"],
  ["Other Sponsor1", "google.com",false,"content content content content",4,"http://logok.org/wp-content/uploads/2014/04/Apple-Logo-black.png"],
  ["Other Sponsor2", "google.com",false,"content content content content",4,"http://logok.org/wp-content/uploads/2014/04/Apple-Logo-black.png"],
  ["Other Sponsor3", "google.com",false,"content content content content",4,"http://logok.org/wp-content/uploads/2014/04/Apple-Logo-black.png"]
]
sponsors_list.each do |name, website, premier, description, sponsor_order, logo|
  Sponsor.create(name: name, website: website, premier: premier, description:description, sponsor_order:sponsor_order, remote_logo_url:logo)
end

tickets_list = [
  ["Three Day Pass", "http://wwww.eventbrite.com", 3000, true],
  ["Thursday", "http://wwww.eventbrite.com", 1500, false],
  ["Friday", "http://wwww.eventbrite.com", 1500, false],
  ["Saturday", "http://wwww.eventbrite.com", 1500, false]
]
tickets_list.each do |name, link, price_in_cents, sold_out|
  Ticket.create(name: name, link: link, price_in_cents: price_in_cents, sold_out: sold_out)
end









