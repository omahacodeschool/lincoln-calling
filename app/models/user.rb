#The schema for the User Model includes many columns
#The primary ones we will use (for log-ins and assigning author info to articles) are first_name:string, last_name:string, email:string, blurb:text, and profile_pic:string
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  def user_full_name
    return self.first_name + " " + self.last_name
  end

  mount_uploader :profile_pic, ProfilePicUploader
end
