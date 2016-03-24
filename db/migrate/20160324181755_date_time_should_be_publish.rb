class DateTimeShouldBePublish < ActiveRecord::Migration
  def change
    rename_column :articles, :date_time, :publish_date_time
  end
end
