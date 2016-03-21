class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :artist_id
      t.integer :venue_id
      t.string :age_range
      t.datetime :start_date_time
      t.datetime :end_date_time

      t.timestamps null: false
    end
  end
end
