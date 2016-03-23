class EventsController  < ActionController::Base
  def index
    @venues = Venue.all
    @events = Event.all
  end
end