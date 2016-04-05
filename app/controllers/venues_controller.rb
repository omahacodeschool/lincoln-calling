require 'venue_presenter'
class VenuesController < ApplicationController
  def index
    @venues = Venue.all
    @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.title venue.name
      marker.lat venue.coordinates_latitude
      marker.lng venue.coordinates_longitude
      marker.infowindow venue.address
      marker.json({:id => venue.id})
    end
  end

  def view
    @venue_data = {}
    @venue = Venue.find_by_id(params[:venue_id])
    @venue_data[@venue.id] = {address: @venue.address, image: @venue.img, info: @venue.info}
    
    th_shows = @venue.venue_events_by_day("Thursday")
    fri_shows = @venue.venue_events_by_day("Friday")
    sat_shows = @venue.venue_events_by_day("Saturday")

    @day1 = VenuePresenter.new(th_shows)
    @day2 = VenuePresenter.new(fri_shows)
    @day3 = VenuePresenter.new(sat_shows)
  end

end