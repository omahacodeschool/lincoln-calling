class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :buildings do |t|
      # t.index [:user_id, :building_id]
      # t.index [:building_id, :user_id]
    end
  end
end
