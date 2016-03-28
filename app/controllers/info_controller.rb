class InfoController < ApplicationController
  def faq
    @faq = Faq.all
    render "faq"  
  end
end