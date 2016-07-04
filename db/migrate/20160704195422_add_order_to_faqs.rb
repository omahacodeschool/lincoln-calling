class AddOrderToFaqs < ActiveRecord::Migration
  def change
    add_column :faqs, :order, :integer
  end
end
