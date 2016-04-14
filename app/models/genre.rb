class Genre < ActiveRecord::Base
  mount_uploader :image, GenreUploader
  has_and_belongs_to_many :artists
  validates :name, uniqueness: { case_sensitive: false }
  validates :name, :image, presence: true
end
