class Article < ActiveRecord::Base
  def self.news_articles
    self.where(news_or_visitor: "news")
  end

  def self.visitor_articles
    self.where(news_or_visitor: "visitor")
  end
end
