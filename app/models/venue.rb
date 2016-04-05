#Venue Model
#schema includes name:string, address:string, info:text, img:string, coordinates_latitude:float, coordinate_longitude:float (these will be used to place the venues on a custom map and do not need to include the specification of North or West)
class Venue < ActiveRecord::Base
  has_many(:events)
  #mount_uploader enables Carrierwave   
  mount_uploader :img, VenueImageUploader

  def sort_venues_shows_per_day(venue_id, week_day)
    shows_at_venue = Event.where("venue_id" => venue_id)
    @shows_at_venue_per_day = []
    shows_at_venue.each do |show|
      if show.weekday == week_day
        @shows_at_venue_per_day << show
      else
        next
      end
    end
    @shows_at_venue_per_day = @shows_at_venue_per_day.sort_by{ |obj| obj.start_date_time}
    return @shows_at_venue_per_day
  end


end