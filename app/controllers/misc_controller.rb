class MiscController < ApplicationController
  def home
    @events = Event.all
    @tickets = Ticket.all
    @articles = Feature.all.order("id DESC").limit(4)
    @headlineartists= Band.order(:headline_order).limit(3)
    @otherartists = Band.where('headline_order != ?', 1).where('headline_order != ?', 2).where('headline_order != ?', 3)
  end
end