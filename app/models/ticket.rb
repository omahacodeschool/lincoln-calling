#a Model to store information about Tickets, which HearNebraska sells through EventBrite.
#schema includes name:string, link:string, price_in_cents:integer(we store the ticket prices in cents for maximum accuracy), eventbrite_id:integer, sold_out:boolean
class Ticket < ActiveRecord::Base
    #This method formats the price of a Ticket object
    #
    #Returns string
    def format_price
        price = (self.price_in_cents.to_f / 100).round(2)
        return helper.number_to_currency(price, unit: '$', precision: 0)
    end
    
    def helper
        @helper ||= Class.new do
            include ActionView::Helpers::NumberHelper
        end.new
    end
end
