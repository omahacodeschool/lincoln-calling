class NewsController < ApplicationController 
    def index
        @articles = Feature.all.order("created_at DESC").page params[:page]
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
  
    def show
        @article = Feature.friendly.find(params[:id])
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
    end
end