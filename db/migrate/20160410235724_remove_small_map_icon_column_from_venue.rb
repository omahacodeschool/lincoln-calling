class RemoveSmallMapIconColumnFromVenue < ActiveRecord::Migration
  def change
    remove_column :venues, :small_map_icon, :string
  end
end
