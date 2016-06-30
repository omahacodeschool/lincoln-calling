class InfoController < ApplicationController
    def faq
        @faq = Faq.all.group_by(&:category)
        @events = Event.all
        weekdays = []
        @days = []
        
        @events.each do |event|
            if weekdays.include?(event.start_date_time.wday) == false
                @days.push(event.start_date_time)
                weekdays.push(event.start_date_time.wday)
            end
        end
        render "faq"
    end
    def about
        @about = About.all
        @events = Event.all
        weekdays = []
        @days = []
        
        @events.each do |event|
            if weekdays.include?(event.start_date_time.wday) == false
                @days.push(event.start_date_time)
                weekdays.push(event.start_date_time.wday)
            end
        end
        render "about"
    end
end