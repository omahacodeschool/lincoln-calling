class FixGenreColumnName < ActiveRecord::Migration
  def change
    rename_column :genres, :type, :name
  end
end
