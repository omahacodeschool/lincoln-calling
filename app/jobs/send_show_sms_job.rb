class SendShowSmsJob < ActiveJob::Base
  queue_as :default

  def perform(notification)
    notification.send_sms
  end
end
