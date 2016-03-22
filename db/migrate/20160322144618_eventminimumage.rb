class Eventminimumage < ActiveRecord::Migration
  def change
    rename_column :events, :age_range, :minimum_age
  end
end
