require 'rails_helper'
RSpec.describe Event, type: :model do
  
  describe "#weekday" do
    it "returns the weekday of an event" do
      event = Event.new(start_date_time: "2016-10-06 12:00:00")
      assert_equal("Thursday", event.weekday)
    end
  end
  describe "#monthday" do
    it "returns the abbreviated month and day of an event" do
      event = Event.new(start_date_time: "2016-10-06 12:00:00")
      assert_equal("Oct. 6", event.monthday)
    end
  end
  describe "#starttime" do
    it "returns event's start time" do
      event = Event.new(start_date_time: "2016-10-06 12:00:00")
      assert_equal("12:00pm", event.starttime)
    end
  end
  describe "#endtime" do
    it "returns event's end time" do
      event = Event.new(end_date_time: "2016-10-06 14:00:00")
      assert_equal(" 2:00pm", event.endtime)
    end
  end
  
  # it "returns array of day's events" do
  #   eventone = Event.new(start_date_time: "2016-10-06 12:00:00")
  #   assert_equal([eventone], Event.byday("Thursday"))
  # end

  describe "#event_length" do
    it "returns length in minutes of event" do
      event = Event.new(end_date_time: "2016-10-06 22:00:00", start_date_time: "2016-10-06 21:00:00")
      assert_equal(60, event.event_length)
    end
  end
end
