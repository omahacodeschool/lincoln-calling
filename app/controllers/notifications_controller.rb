class NotificationsController < ApplicationController
  require 'json'
  require 'twilio-ruby'
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token



#does the phone number field get verified automatically (i.e. will it throw an error if a user does not enter a phone number?)
  def plan_my_festival
    event_list = params[:set_events]
    event_list.each do |event_id|
      @notification= Notification.new
      @notification.phone_number = params[:phone_number]
      @notification.event_id = event_id
      @notification.save
    end
    redirect_to "/events/list"
  end


 def send_sms
  #I think these numbers need to go in the .env.local file
  # TWILIO_ACCOUNT_ID='AC92417814cb1961be7a4360be84d3d035' 
  # TWILIO_AUTH_TOKEN='459ec66ebb1b3c1a9899d9d9c1102612'
  # account_sid = ENV["TWILIO_ACCOUNT_ID"]
  # auth_token = ENV["TWILIO_AUTH_TOKEN"] 
  account_sid = "AC92417814cb1961be7a4360be84d3d035"
  auth_token = "[459ec66ebb1b3c1a9899d9d9c1102612]"
  twilio_phone_number = "4027693024"

  notification_list = Notification.all

    notification_list.each do |notification|

      number_to_send_to = notification.phone_number
      message = event_message
      @twilio_client = Twilio::REST::Client.new account_sid, auth_token 
      @twilio_client.account.sms.messages.create(
        :from => "+1#{twilio_phone_number}",
        :to => number_to_send_to,
        :body => "#{message}"
      )
    end
 end



#EXAMPLE FROM SMS-CRM
  # Method takes a Touch object IF it is the most recent OUTGOING touch... and creates a text message from the data saved in the DB.
  #returns nil.
  #Also adds country code to phone number. Default is US ("+1")
  # def send_sms
  #   client = Client.find_by_id(params[:client_id])
  #   touch = client.touches.create({message: params[:message_content], outgoing: true, read: true})

  #   # Twilio credentials:
  #   account_sid = ENV["TWILIO_ACCOUNT_ID"]
  #   auth_token = ENV["TWILIO_AUTH_TOKEN"] 

  #   # set up a client to talk to the Twilio REST API 
  #   @twilio = Twilio::REST::Client.new(account_sid, auth_token) 
     
  #   # Sending an SMS:
  #   @twilio.account.messages.create(
  #     :from => client.business.business_phone, 
  #     :to => client.phone_number, 
  #     :body => touch.message
  #   )
  
  # end

end


