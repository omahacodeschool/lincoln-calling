class MiscController < ApplicationController
  def home
    @events = Event.all
  end  
end