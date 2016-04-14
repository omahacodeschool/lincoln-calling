class NotificationsController < ApplicationController
  require 'json'

  def plan_my_festival
    event_list = params[:set_events]
    event_list.each do |event_id|
      @notification= Notification.new
      @notification.phone_number = params[:phone_number]
      @notification.event_id = event_id
      @notification.save
    end
    redirect_to "events/list"
  end
end