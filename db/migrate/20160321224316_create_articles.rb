class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :byline
      t.string :article
      t.string :image

      t.timestamps null: false
    end
  end
end
