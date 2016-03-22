class AddCoordinatesLattitudeToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :coordinates_lattitude, :integer
  end
end
