class RemoveIsBandFromArtists < ActiveRecord::Migration
  def change
    remove_column :artists, :is_band, :boolean
  end
end
