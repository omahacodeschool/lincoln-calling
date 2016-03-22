class BylineShouldBeUserId < ActiveRecord::Migration
  def change
    rename_column :articles, :byline, :user_id
  end
end
