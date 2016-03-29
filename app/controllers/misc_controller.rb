class MiscController < ApplicationController
  def home
    @events = Event.all
    articles = Feature.all.order("id DESC").limit(4)
    @featurearticle = articles[0]
    @articles = articles[1..3]
    @headlineartists= Band.order(:headline_order).limit(3)
    @otherartists = Band.where('headline_order != ?', 1).where('headline_order != ?', 2).where('headline_order != ?', 3)
  end  
end