class Event < ActiveRecord::Base
  def venue_name
    ven = Venue.find_by_id(self.venue_id)
    ven.name
  end
end
