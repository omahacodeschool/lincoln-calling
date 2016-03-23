class Venue < ActiveRecord::Base
  ## allevents find all events at given venue
  #
  # Returns Array of Event objects
  def allevents
    Event.where("venue_id" => self.id)
  end
end
