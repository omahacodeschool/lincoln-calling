class VenueBioShouldBeText < ActiveRecord::Migration
  def up
    change_column :venues, :info, 'text USING CAST(info AS text)'
  end

  def down
    change_column :venues, :info, :string
  end
end
