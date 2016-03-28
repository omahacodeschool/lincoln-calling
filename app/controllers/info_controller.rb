class InfoController < ApplicationController
  
  def visitorindex
    @articles = Visitor.all.order("id DESC").limit(6)
  end

  def visitorshow
    @article = Visitor.find_by_id(params[:id])
  end

end