class EventsController  < ApplicationController
  def index
    @venues = Venue.all
    @events = Event.all
    @artists = Artist.all
  end
end