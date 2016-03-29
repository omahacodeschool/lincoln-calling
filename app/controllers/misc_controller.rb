class MiscController < ApplicationController
  def home
    @events = Event.all
    #once we have full web views, this number will have to be bigger
    @articles = Feature.all.order("id DESC").limit(1)
  end  
end