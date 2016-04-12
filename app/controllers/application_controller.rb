class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def events
    @events = Event.all
    @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
  end
end
