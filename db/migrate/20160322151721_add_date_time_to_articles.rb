class AddDateTimeToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :date_time, :datetime
  end
end
