class NewsController < ApplicationController 
  def index
    @articles = Feature.all.order("id DESC").limit(6)
  end
  def show
    @article = Feature.find_by_id(params[:id])
  end
end