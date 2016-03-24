class ChangeArticleContentToText < ActiveRecord::Migration
  def up
    change_column :articles, :article_content, 'text USING CAST(article_content AS text)'
  end

  def down
    change_column :articles, :article_content, :string
  end
end
