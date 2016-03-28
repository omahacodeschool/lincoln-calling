#a Model to store information about Tickets, which HearNebraska sells through EventBrite.
#schema includes name:string, link:string, price_in_cents:integer(we store the ticket prices in cents for maximum accuracy), eventbrite_id:integer, sold_out:boolean
class Ticket < ActiveRecord::Base
end
