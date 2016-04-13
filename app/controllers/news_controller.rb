class NewsController < ApplicationController 
  def index
    @articles = Feature.all.order("id DESC").limit(6)
    @events = Event.all
    @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
  end
  
  def show
    @article = Feature.find_by_id(params[:id])
    @events = Event.all
    @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
  end

  def show_image
    @article = Feature.find_by_id(params[:id])
    @image = @article.image
  end
end