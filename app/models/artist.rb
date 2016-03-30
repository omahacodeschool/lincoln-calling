#Model for Artist--has two main Classes, Band and Comedian
#The Schema includes name:string, genre:string (Rock, Pop, etc.), origin:string(hometown/country), website:string, bio:text, image:string, headline_order:integer(allows HearNE to prioritize headliners in views) and type:string (where we specify if an artist is a Band or a Comedian)
class Artist < ActiveRecord::Base
  has_many(:events)

  def get_venue_ids
    venue_ids = []
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

  mount_uploader :image, ArtistImageUploader

end
