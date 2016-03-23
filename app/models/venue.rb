class Venue < ActiveRecord::Base
  def allevents
    Event.where("venue_id" => self.id)
  end
end
