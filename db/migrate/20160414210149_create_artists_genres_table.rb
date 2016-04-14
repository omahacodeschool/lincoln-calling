class CreateArtistsGenresTable < ActiveRecord::Migration
  def change
    create_table :artists_genres, :force => true, :id => false do |t|
        t.integer "artist_id", :null => false
        t.integer "genre_id", :null => false
    end
  end
end
