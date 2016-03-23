class Event < ActiveRecord::Base
  def venue
    Venue.find_by_id(self.venue_id)
  end
  def artist
    Artist.find_by_id(self.artist_id)
  end
  def weekday
    self.start_date_time.strftime("%A")
  end
  def monthday
    self.start_date_time.strftime("%b. %e")
  end
  def starttime
    self.start_date_time.strftime("%l:%M%P")
  end
  def endtime
    self.end_date_time.strftime("%l:%M%P")
  end
end
