#Venue Model
#schema includes name:string, address:string, info:text, img:string, coordinates_latitude:float, coordinate_longitude:float (these will be used to place the venues on a custom map and do not need to include the specification of North or West)
class Venue < ActiveRecord::Base
  has_many(:events)
  #mount_uploader enables Carrierwave   
  mount_uploader :img, VenueImageUploader

  #class method to find all events happening on a particular day for a specific venue
  #used in events index and events sidebar
  def venue_events_by_day(day)
    events = []
    venue_events = Event.where({venue_id: self.id}).order(:start_date_time)
    venue_events.each do |event|
      if event.weekday == day
        events << event
      end
    end
    return events
  end
 
 end