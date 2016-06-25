class InfoController < ApplicationController
    def faq
        @faq = Faq.all.group_by(&:category)
        @events = Event.all
        @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
        @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
        @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
        render "faq"
    end
    def about
        @about = About.all
        @events = Event.all
        @day1 = VenuePresenter.new(@events.byday("Thursday")).events_with_venue_and_artist_info
        @day2 = VenuePresenter.new(@events.byday("Friday")).events_with_venue_and_artist_info
        @day3 = VenuePresenter.new(@events.byday("Saturday")).events_with_venue_and_artist_info
        render "about"
    end
end