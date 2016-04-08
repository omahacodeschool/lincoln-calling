class ChangeVenueColumnName < ActiveRecord::Migration
  def change
    rename_column :venues, :coordinates_latitude, :latitude
    rename_column :venues, :coordinates_longitude, :longitude
  end
end
