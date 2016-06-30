#Venue Model
#schema includes name:string, address:string, info:text, img:string, coordinates_latitude:float, coordinate_longitude:float (these will be used to place the venues on a custom map and do not need to include the specification of North or West)
class Venue < ActiveRecord::Base
    has_many(:events)
    #mount_uploader enables Carrierwave   
    mount_uploader :img, VenueImageUploader
    mount_uploader :map_icon, MapIconUploader
    geocoded_by :address   # can also be an IP address
    validates :name, :address, :info, presence: true
    after_validation :geocode # auto-fetch coordinates

    #class method to find all events happening on a particular day for a specific venue
    #used in events index and events sidebar
    def venue_events_by_day(day)
        current_date_time = DateTime.parse(day)
        events = []
        venue_events = Event.where({venue_id: self.id}).order(:start_date_time)
        venue_events.each do |event|
            start_of_day = current_date_time.beginning_of_day + 6.hours
            end_of_day = current_date_time.end_of_day + 6.hours
            if event.start_date_time >= start_of_day && event.start_date_time < end_of_day
                events << event
            end
        end
        return events
    end
end