class AddHideToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :hide, :boolean
  end
end
