class MiscController < ApplicationController
  def home
    @tickets = Ticket.all
    @articles = Feature.all.order("id DESC").limit(4)
    @headlineartists= Band.order(:headline_order).limit(3)
    @otherartists = Band.where('headline_order != ?', 1).where('headline_order != ?', 2).where('headline_order != ?', 3)
    @events = Event.all
    @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
    @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
    @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
 end

  def plan_my_festival
    @attendee = Attendee.new
    @attendee.phone_number = params[:phone]
    @attendee.events = params[:set_events]
    @attendee.save
  end

end