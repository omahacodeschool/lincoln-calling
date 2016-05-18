#Model for Artist--has two main Classes, Band and Comedian
#The Schema includes name:string, genre:string (Rock, Pop, etc.), origin:string(hometown/country), website:string, bio:text, image:string, headline_order:integer(allows HearNE to prioritize headliners in views) and type:string (where we specify if an artist is a Band or a Comedian)
class Artist < ActiveRecord::Base
  has_and_belongs_to_many :genres
  has_many(:events)
  #mount_uploader enables Carrierwave 
  mount_uploader :image, ArtistImageUploader

  include PgSearch
  pg_search_scope :search_by_name, :against => :name
  validates :name, presence: true
end
