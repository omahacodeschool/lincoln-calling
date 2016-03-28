class RemoveNewsOrVisitorFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :news_or_visitor, :string
  end
end
