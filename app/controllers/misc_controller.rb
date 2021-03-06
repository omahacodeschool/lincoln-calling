class MiscController < ApplicationController
    def home
        @tickets = Ticket.all.order(:created_at).group_by(&:category)
        @articles = Feature.all.order("id DESC").limit(4)
        @headliners = Band.where(headliner: true)
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
        @days.pop
    end
end
