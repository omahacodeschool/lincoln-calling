class ChangeArtistBioToText < ActiveRecord::Migration
  def up
    change_column :artists, :bio, 'text USING CAST(bio AS text)'
  end

  def down
    change_column :artists, :bio, :string
  end
end
