class MiscController < ApplicationController
  def home
    @events = Event.all
    articles = Feature.all.order("id DESC").limit(4)
    @featurearticle = articles[0]
    @articles = articles[1..3]
    @artists= Band.order(:headline_order).limit(3)
  end  
end