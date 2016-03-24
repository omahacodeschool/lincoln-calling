class CoordinateLatShouldBeFloat < ActiveRecord::Migration
  def up
    change_column :venues, :coordinates_latitude, 'float USING CAST(coordinates_lattitude AS float)'
  end

  def down
    change_column :venues, :coordinates_latitude, :integer
  end
end
