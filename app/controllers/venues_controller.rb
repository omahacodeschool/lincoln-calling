class VenuesController < ApplicationController
  def index
    @venues = Venue.all
    @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.title venue.name
      marker.lat venue.coordinates_latitude
      marker.lng venue.coordinates_longitude
      marker.infowindow venue.address
      marker.json({
        :id => venue.id {
        :venue_info => venue.info,
        :venue_image => venue.img, 
        :th_shows => venue.venue_events_by_day("Thursday"),
        :fri_shows => venue.venue_events_by_day("Friday"),
        :saturday => venue.venue_events_by_day("Saturday"),
        }})
    end

  end
end