class NewsController < ApplicationController
  
  def index
    @articles = Article.news_articles.order("id DESC").limit(6)
  end

  def show
    @article = Article.find_by_id(params[:id])
  end

end