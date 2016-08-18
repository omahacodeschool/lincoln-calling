require 'json'
require 'venue_presenter'
require 'schedule_presenter'

class VenuesController < ApplicationController
    def index
        @events = Event.all
        weekdays = []
        @days = []

        @events.each do |event|
            if weekdays.include?(event.start_date_time.wday) == false
                @days.push(event.start_date_time)
                weekdays.push(event.start_date_time.wday)
            end
        end

        @days = @days.sort
        
        @venues = Venue.all.order(:name)
    end
end
