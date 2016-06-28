class AddHeadlinerToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :headliner, :boolean
  end
end
