class Event < ActiveRecord::Base
  def venue
    Venue.find_by_id(self.venue_id)
  end
  def artist
    Artist.find_by_id(self.artist_id)
  end
end
