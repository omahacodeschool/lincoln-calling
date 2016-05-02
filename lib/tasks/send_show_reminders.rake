task :send_show_reminders => :environment do
  Notification.time_to_send_sms
end
