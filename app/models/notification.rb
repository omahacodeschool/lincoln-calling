class Notification < ActiveRecord::Base

  # This method defines the message that will get sent 
  # for each Notification object
  #
  # Returns nil
  #
  # TODO: Add customized messages
  def event_message
    return "there is a concert soon"
  end

  def Notification.send_sms
  account_sid = ENV["TWILIO_ACCOUNT_ID"]
  auth_token = ENV["TWILIO_AUTH_TOKEN"] 
  twilio_phone_number = "4027693024"

  notification_list = Notification.all

    notification_list.each do |notification|

      number_to_send_to = notification.phone_number
      message = notification.event_message
      @twilio_client = Twilio::REST::Client.new account_sid, auth_token 
      @twilio_client.account.sms.messages.create(
        :from => "+1#{twilio_phone_number}",
        :to => number_to_send_to,
        :body => "#{message}"
      )
    end
 end

end