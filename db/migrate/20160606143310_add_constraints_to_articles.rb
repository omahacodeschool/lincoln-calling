class AddConstraintsToArticles < ActiveRecord::Migration
  def change
    change_column_null :articles, :title, false
    change_column_null :articles, :user_id, false
    change_column_null :articles, :article_content, false
  end
end
