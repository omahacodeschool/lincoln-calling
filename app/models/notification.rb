class Notification < ActiveRecord::Base
  belongs_to(:event)

  # This method defines the message that will get sent 
  # for each Notification object
  #
  # Returns nil
  #
  # TODO: Add customized messages
  def event_message
    "#{self.event.artist.name} is playing at #{self.event.venue.name} in one hour."
  end

  def send_sms
    account_sid = ENV["TWILIO_ACCOUNT_ID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"] 
    twilio_phone_number = ENV["TWILIO_PHONE_NUMBER"] 

    @twilio_client = Twilio::REST::Client.new account_sid, auth_token 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => self.phone_number,
      :body => "#{self.event_message}"
    )
 end

 def Notification.time_to_send_sms
  events = Event.where("start_date_time < ?", Time.current + 1.hour)
  events.each do |event| 
    event.notifications.each do |notification|
      SendShowSmsJob.perform_later(notification)
    end
  end
 end

end