class AddAgesToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :ages, :string
  end
end
