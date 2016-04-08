class VisitorsController < ApplicationController 
  def index
    @articles = Visitor.all.order("id DESC").limit(6)
  end
  def show
    @article = Visitor.find_by_id(params[:id])
  end
end