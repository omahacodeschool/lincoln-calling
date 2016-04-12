class EventsController  < ApplicationController
  def index
    @venues = Venue.all
    @events = Event.all
  end

end