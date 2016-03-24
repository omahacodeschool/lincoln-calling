class FixSpellingOfLatitude < ActiveRecord::Migration
  def change
    rename_column :venues, :coordinates_lattitude, :coordinates_latitude
  end
end
