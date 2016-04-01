class InfoController < ApplicationController
  def faq
    @faq = Faq.all
    render "faq"
  end
  def about
    @about = About.all
    @events = Event.all
    render "about"
  end
end