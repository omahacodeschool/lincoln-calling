class ReallyAddingInOtherConstraints < ActiveRecord::Migration
  def change
    change_column_null :artists, :name, false
    change_column_null :artists, :origin, false
    change_column_null :artists, :bio, false
    change_column_null :artists, :image, false
    change_column_null :artists, :type, false
    
    change_column_null :events, :artist_id, false
    change_column_null :events, :venue_id, false
    change_column_null :events, :minimum_age, false
    
    change_column_null :genres, :name, false

    change_column_null :sponsors, :name, false
    change_column_null :sponsors, :description, false
    change_column_null :sponsors, :logo, false
    change_column_null :sponsors, :premier, false

    change_column_null :venues, :name, false
    change_column_null :venues, :address, false
    change_column_null :venues, :info, false
    change_column_null :venues, :website, false
    change_column_null :venues, :img, false
  end
end
