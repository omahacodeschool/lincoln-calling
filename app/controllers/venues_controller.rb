require 'json'
require 'venue_presenter'
require 'schedule_presenter'

class VenuesController < ApplicationController
  def index
    @events = Event.all
    @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
    @venues = Venue.all
    counter = 0
    @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.title venue.name
      marker.lat venue.latitude
      marker.lng venue.longitude
      marker.infowindow "<p class='venueMarker' value=#{venue.id}>#{venue.name}<br> #{venue.address}</p>"
      marker.picture({:url => venue.map_icon.url, :width => 59, :height => 83, :class => "venueMarker", :value => venue.id})
      marker.json({:id => venue.id, :icon => venue.map_icon.url})
    end
  end

end