class SidebarsController  < ActionController::Base
  def events
    @events = Event.all
    @events = Event.all
    @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info

    render "events"
  end
  def artists
    @artist = Artist.find_by_id(params[:id])
  end
end