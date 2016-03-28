class Event < ActiveRecord::Base
  belongs_to :venue, :artist

  # #returns the venue id for event
  # def venue
  #   Venue.find_by_id(self.venue_id)
  # end

  #returns the artist id for event
  def artist
    Artist.find_by_id(self.artist_id)
  end
  #returns the full word for day of week of event
  #example: Thursday
  def weekday
    self.start_date_time.strftime("%A")
  end
  #returns the abbreviated month and day number
  #example: Oct. 6 
  def monthday
    self.start_date_time.strftime("%b. %e")
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
  def self.byday(weekday)
    events = []
    Event.all.each do |event|
      if event.weekday == weekday
        events << event
      end
    end
    return events
  end
end







