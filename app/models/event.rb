#Model for Event
#The Event Schema includes artist_id:integer, venue_id:integer, minimum_age:string(for example: "21 and Older"), start_date_time:datetime, end_date_time:datetime
class Event < ActiveRecord::Base
  belongs_to(:venue)
  belongs_to(:artist)
  #returns the full word for day of week of event
  #example: Thursday
  def weekday
    self.start_date_time.strftime("%A")
  end
  #returns the abbreviated month and day number
  #example: Oct. 6 
  def monthday
    self.start_date_time.strftime("%b.%e")
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
  def self.byday(weekday)
    events = []
    Event.all.each do |event|
      if event.weekday == weekday
        events << event
      end
    end
    return events
  end

  def event_length(event_id)
    event = Event.find_by_id(event_id)
    binding.pry
    event_length_decimal = (Time.parse(event.endtime) - Time.parse(event.starttime))/60
    @event_length = event_length_decimal.to_i
    return @event_length
  end
end

