class AddBandBooleanToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :is_band, :boolean
  end
end
