class NotificationsController < ApplicationController
  require 'json'
  require 'twilio-ruby'

  skip_before_action :verify_authenticity_token


#TODO: ensure the phone number field get verified automatically (i.e. will it throw an error if a user does not enter a phone number?)
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

end


