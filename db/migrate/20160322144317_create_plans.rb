class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :phone_number
      t.integer :event_id

      t.timestamps null: false
    end
  end
end
