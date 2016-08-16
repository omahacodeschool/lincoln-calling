class InfoController < ApplicationController
    def faq
        @faq = Faq.all.order(:order).group_by(&:category)
        @events = Event.all
        weekdays = []
        @days = []

        @events.each do |event|
            if weekdays.include?(event.start_date_time.wday) == false
                @days.push(event.start_date_time)
                weekdays.push(event.start_date_time.wday)
            end
        end

        @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

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
    def hotels
        @events = Event.all
        weekdays = []
        @days = []

        @events.each do |event|
            if weekdays.include?(event.start_date_time.wday) == false
                @days.push(event.start_date_time)
                weekdays.push(event.start_date_time.wday)
            end
        end
        
        render "hotels"
    end
end
