class Article < ActiveRecord::Base
  def self.news_articles
    self.where(news_or_visitor: "news")
  end

  def self.visitor_articles
    self.where(news_or_visitor: "visitor")
  end

  def user_access
    x = self.user_id
    y = User.find_by_id(x)
    return y
  end
end
