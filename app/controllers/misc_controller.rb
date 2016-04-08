class MiscController < ApplicationController
  def home
    @events = Event.all
    @tickets = Ticket.all
    @articles = Feature.all.order("id DESC").limit(4)
    @headlineartists= Band.order(:headline_order).limit(3)
    @otherartists = Band.where('headline_order != ?', 1).where('headline_order != ?', 2).where('headline_order != ?', 3)

    @event = Event.new
    th_shows = @events.byday("Thursday")
    fri_shows = @events.byday("Friday")
    sat_shows = @events.byday("Saturday")

    @day1 = VenuePresenter.new(th_shows).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(fri_shows).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(sat_shows).events_with_venue_and_artist_info


  end
end