class AddMapIconToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :map_icon, :string
  end
end
