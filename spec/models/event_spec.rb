require 'rails_helper'

RSpec.describe Event, type: :model do
  describe ".weekday" do
    it "returns the weekday of an event" do
      event = Event.new(start_date_time: "2016-10-06 12:00:00")
      assert_equal("Thursday", event.weekday)
    end
  end
end
