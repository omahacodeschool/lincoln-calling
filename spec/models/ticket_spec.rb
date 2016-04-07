require 'rails_helper'

RSpec.describe Ticket, type: :model do
   describe "#format_price" do
    it "returns the formatted price of a ticket" do
      ticket = Ticket.new(price_in_cents: 3000)
      assert_equal("$30", ticket.format_price)
    end
  end
end
