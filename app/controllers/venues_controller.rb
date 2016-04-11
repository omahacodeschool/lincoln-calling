
require 'json'
require 'venue_presenter'
class VenuesController < ApplicationController
  def index
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

  def view
    @venue = Venue.find_by_id(params[:venue_id])
    @venue_data = {}
    @venue_data[@venue.name] = {address: @venue.address, image: @venue.img, info: @venue.info, website: @venue.website}
    
    th_shows = @venue.venue_events_by_day("Thursday")
    fri_shows = @venue.venue_events_by_day("Friday")
    sat_shows = @venue.venue_events_by_day("Saturday")

    @day1 = VenuePresenter.new(th_shows)
    @day2 = VenuePresenter.new(fri_shows)
    @day3 = VenuePresenter.new(sat_shows)

    @info_hash ={}
    @info_hash["day1Shows"] = @day1.venue_events_with_artist_info.to_json
    @info_hash["day2Shows"] = @day2.venue_events_with_artist_info.to_json
    @info_hash["day3Shows"] = @day3.venue_events_with_artist_info.to_json
    @info_hash["venueData"] = @venue_data.to_json

    render :layout => false
  end

end