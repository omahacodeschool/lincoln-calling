class ChangeArticeDateTimeToPublishDate < ActiveRecord::Migration
  def change
    rename_column :articles, :article, :article_content
  end
end
