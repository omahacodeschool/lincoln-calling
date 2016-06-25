class AddPublicationDateToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :publication_date, :datetime
  end
end
