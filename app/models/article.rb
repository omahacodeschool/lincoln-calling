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

  #returns the full month, day number, and four-digit year.
  #example: October 6, 2016
  def monthdayyear
    self.publish_date_time.strftime("%B %e, %Y")
  end
  
end