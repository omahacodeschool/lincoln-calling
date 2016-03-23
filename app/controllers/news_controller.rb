class NewsController < ApplicationController
  def index
    @articles = Article.news_articles.order("id DESC").limit(6)
  end
end