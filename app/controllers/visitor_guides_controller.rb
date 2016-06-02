class VisitorGuidesController < ApplicationController 
  def index
    @articles = VisitorGuide.all.order("created_at DESC").page params[:page]
    @events = Event.all
    @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
  end
  def show
    @article = VisitorGuide.find_by_id(params[:id])
    @events = Event.all
    @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
  end
end