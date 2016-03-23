class NewsController < ApplicationController
  def index
    @articles = Article.news_articles.order("created_at DESC").limit(6)
  end
end