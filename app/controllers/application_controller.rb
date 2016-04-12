class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def events
    @events = Event.all
    th_shows = @events.byday("Thursday")
    fri_shows = @events.byday("Friday")
    sat_shows = @events.byday("Saturday")
    @day1 = VenuePresenter.new(th_shows).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(fri_shows).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(sat_shows).events_with_venue_and_artist_info
  end
end
