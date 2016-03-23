class AddCoordinatesLongitudeToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :coordinates_longitude, :integer
  end
end
