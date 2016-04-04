#Model for Article--has two main classes News and Visitor, and two additional, lesser used classes, About and FAQ
#The schema for the model includes title:string user_id:integer(user id of the author), article_content:text, image:string(article image),publish_date_time:date_time, and type:string(where we establish a Class of News or Visitor, or less often, FAQ or About)
class Article < ActiveRecord::Base 
  #user_access returns the User object of the author of an article
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
  #mount_uploader enables Carrierwave  
  mount_uploader :image, ArticleImageUploader
end