class PutTypeBackInArticles < ActiveRecord::Migration
  def change
    add_column :articles, :type, :string
  end
end
