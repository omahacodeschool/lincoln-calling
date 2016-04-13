require 'rails_helper'
RSpec.describe SchedulePresenter, type: :model do

  describe "#find_days_start_time" do
    it "returns DateTime object for 5pm on day called" do
    this_date = DateTime.new(2016,10,6,17,00,00, '+0')
    venue_object = Venue.new
    schedule_presenter = SchedulePresenter.new(venue_object)
    assert_equal(this_date, schedule_presenter.find_days_start_time("Thursday"))
    end
  end

end
