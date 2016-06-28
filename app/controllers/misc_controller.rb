class MiscController < ApplicationController
    def home
        @tickets = Ticket.all.order(:created_at).group_by(&:category)
        @articles = Feature.all.order("id DESC").limit(4)
        @headliners = Band.where(headliner: true)
        @supporting_acts = Band.where(headliner: false)
        @events = Event.all
        @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
        @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
        @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
    end
end