require 'json'
require 'venue_presenter'
require 'schedule_presenter'

class VenuesController < ApplicationController
    def index
        @events = Event.all
        @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
        @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
        @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
        @venues = Venue.all.order(:name)
    end
end