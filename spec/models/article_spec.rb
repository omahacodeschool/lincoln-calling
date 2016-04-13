require 'rails_helper'

RSpec.describe Article, type: :model do
  # describe "#user_access" do
  #   it "returns object User of the author of an article" do
  #     user = User.new(id: 1, first_name: "John", last_name: "Doe")
  #     user.save
  #     article = Article.new(user_id: 1)
  #     article.save
  #     assert_equal(user, article.user_access)
  #   end
  # end
  
  describe "#monthdayyear" do
    it "returns the publish date of the article" do
    article = Article.new(publish_date_time: "2016-10-06 12:00:00")
    assert_equal("October  6, 2016", article.monthdayyear)
    end
  end
end
