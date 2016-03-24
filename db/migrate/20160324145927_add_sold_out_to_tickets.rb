class AddSoldOutToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :sold_out, :boolean
  end
end
