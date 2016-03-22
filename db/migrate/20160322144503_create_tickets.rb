class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :link
      t.integer :price_in_cents
      t.integer :eventbrite_id

      t.timestamps null: false
    end
  end
end
