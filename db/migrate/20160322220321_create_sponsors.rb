class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :website
      t.boolean :premier
      t.text :description
      t.integer :sponsor_order

      t.timestamps null: false
    end
  end
end
