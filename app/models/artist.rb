#Model for Artist--has two main Classes, Band and Comedian
#The Schema includes name:string, genre:string (Rock, Pop, etc.), origin:string(hometown/country), website:string, bio:text, image:string, headline_order:integer(allows HearNE to prioritize headliners in views) and type:string (where we specify if an artist is a Band or a Comedian)
class Artist < ActiveRecord::Base
  has_many(:events)

  def event_start
    event_start = []
    x = self.id
    y = Event.where(:artist_id => x)
    y.each do |event|
      event_start << event.starttime
    end
    return event_start
  end

  def event_end
    event_end = []
    x = self.id
    y = Event.where(:artist_id => x)
    y.each do |event|
      event_end << event.endtime
    end
    return event_end
  end

  def event_venue_id
    event_venue_id = []
    x = self.id
    y = Event.where(:artist_id => x)
    y.each do |event|
      event_venue_id << event.venue_id
    end
    return event_venue_id
  end

  def venue_name
    venue_name = []
    x = self.event_venue_id
    y = Venue.where(:id => x)
    y.each do |venue|
      venue_name << venue.name
    end
    return venue_name
  end

  def venue_address
    venue_address = []
    x = self.event_venue_id
    y = Venue.where(:id => x)
    y.each do |venue|
      venue_address << venue.address
    end
    return venue_address
  end

end
