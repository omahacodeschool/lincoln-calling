class LongitudeShouldBeFloat < ActiveRecord::Migration
  def up
    change_column :venues, :coordinates_longitude, 'float USING CAST(coordinates_longitude AS float)'
  end

  def down
    change_column :venues, :coordinates_longitude, :integer
  end
end
