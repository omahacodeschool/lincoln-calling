class ChangeArticlesUserIdToInteger < ActiveRecord::Migration
  def up
    change_column :articles, :user_id, 'integer USING CAST(user_id AS integer)'
  end

  def down
    change_column :articles, :user_id, :string
  end
end
