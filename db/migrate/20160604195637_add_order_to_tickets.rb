class AddOrderToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :order, :integer
  end
end
