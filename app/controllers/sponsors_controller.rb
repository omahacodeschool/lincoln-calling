class SponsorsController  < ApplicationController
    def index
        @premier_sponsors = Sponsor.where({:premier => true}).order('sponsor_order')
        @sponsors = Sponsor.where({:premier => false}).order('sponsor_order')

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
