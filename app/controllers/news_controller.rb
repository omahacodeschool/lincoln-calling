class NewsController < ApplicationController 
  def index
    @articles = Feature.all.order("id DESC").limit(6)
    @events = Event.all
    th_shows = @events.byday("Thursday")
    fri_shows = @events.byday("Friday")
    sat_shows = @events.byday("Saturday")
    @day1 = VenuePresenter.new(th_shows).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(fri_shows).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(sat_shows).events_with_venue_and_artist_info
  end
  def show
    @article = Feature.find_by_id(params[:id])
  end
end