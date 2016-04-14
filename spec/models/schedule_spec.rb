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

  describe "#shows_at_venue_per_day" do
    it "returns Array of shows and blanks at one venue in one day" do
      venue_object = Venue.new
      venue_object.save
      schedule_presenter = SchedulePresenter.new(venue_object)
      a1 = Artist.new(name: "Hot Chip")
      e1 = Event.new(venue_id: venue_object.id, artist_id: a1.id, start_date_time: "2016-10-06 19:00:00", end_date_time: "2016-10-06 19:30:00")
      e1.save
      e2 = Event.new(venue_id: venue_object.id, artist_id: a1.id, start_date_time: "2016-10-06 21:00:00", end_date_time: "2016-10-06 21:30:00")
      e2.save
      e3 = Event.new(venue_id: venue_object.id, artist_id: a1.id, start_date_time: "2016-10-06 22:30:00", end_date_time: "2016-10-06 23:30:00")
      e3.save
      assert_equal(12, schedule_presenter.shows_at_venue_per_day("Thursday").length)
    end
  end

end
