class MiscController < ApplicationController
    def home
        @tickets = Ticket.all.order(:created_at).group_by(&:category)
        @articles = Feature.all.order("id DESC").limit(4)
        @headliners = Band.where(headliner: true)
        @supporting_acts = Band.where(headliner: false)
        @events = Event.all
        
        weekdays = []
        @days = []
        
        @events.each do |event|
            if weekdays.include?(event.start_date_time.wday) == false
                @days.push(event.start_date_time)
                weekdays.push(event.start_date_time.wday)
            end
        end
    end
end