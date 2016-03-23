class AddTypeForArticles < ActiveRecord::Migration
  def change
    add_column :articles, :news_or_visitor, :string
  end
end
