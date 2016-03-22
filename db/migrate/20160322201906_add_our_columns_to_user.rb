class AddOurColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :blurb, :text
    add_column :users, :profile_pic, :string
  end
end
