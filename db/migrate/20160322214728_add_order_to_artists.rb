class AddOrderToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :headline_order, :integer
  end
end
