#Model for Event
#The Event Schema includes artist_id:integer, venue_id:integer, minimum_age:string(for example: "21 and Older"), start_date_time:datetime, end_date_time:datetime
class Event < ActiveRecord::Base
    belongs_to(:venue)
    belongs_to(:artist)
    has_many(:notifications)
    validates :artist_id, :venue_id, :start_date_time, :end_date_time, presence: true
    #returns the full word for day of week of event
    #example: Thursday
    def weekday
        self.start_date_time.strftime("%A")
    end
    #returns the abbreviated month and day number
    #example: Oct. 6
    def monthday
        (self.start_date_time - 6.hours).strftime("%A, %b. %e")
    end
    #returns event's start time
    #example: 1:30pm OR 12:45am etc
    def starttime
        self.start_date_time.strftime("%l:%M%P")
    end
    #returns event's end time
    #example: 1:30pm OR 12:45am etc
    def endtime
        self.end_date_time.strftime("%l:%M%P")
    end
    #class method to find all events happening on a particular day
    #used in events index and events sidebar
    def self.byday(current_date_time)
        events = []
        Event.all.includes(:venue).order("venues.name asc").each do |event|
            start_of_day = current_date_time.beginning_of_day + 6.hours
            end_of_day = current_date_time.end_of_day + 6.hours
            if event.start_date_time >= start_of_day && event.start_date_time < end_of_day
                events << event
            end
        end
        return events
    end

    #returns length of event in minutes
    #example: 30 OR 45
    def event_length
        event_length_decimal = (self.end_date_time - self.start_date_time)/60
        @event_length = event_length_decimal.to_i
        return @event_length
    end
end
