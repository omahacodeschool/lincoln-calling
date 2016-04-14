class Notification < ActiveRecord::Base
  def event_message
    return "there is a concert soon"
  end
end