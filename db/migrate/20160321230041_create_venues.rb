class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :location
      t.string :info
      t.string :img

      t.timestamps null: false
    end
  end
end
