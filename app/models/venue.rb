#Venue Model
#schema includes name:string, address:string, info:text, img:string, coordinates_latitude:float, coordinate_longitude:float (these will be used to place the venues on a custom map and do not need to include the specification of North or West)
class Venue < ActiveRecord::Base
  has_many(:events)
  ## allevents find all events at given venue
  #
  # Returns Array of Event objects

  # def allevents
  #   Event.where("venue_id" => self.id)
  # end

  mount_uploader :img, VenueImageUploader
end
 