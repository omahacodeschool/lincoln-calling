class VenuePresenter

  def initialize(venue_object)
    @venue = venue_object
  end

  def venue
    return @venue
  end

  def shows_at_venue_per_day(week_day)
    shows_at_venue = Event.where("venue_id" => @venue.id)
    @shows_at_venue_per_day = []
    shows_at_venue.each do |show|
      if show.weekday == week_day
        @shows_at_venue_per_day << show
      else
        next
      end
    end
    @shows_at_venue_per_day = @shows_at_venue_per_day.sort_by{ |obj| obj.start_date_time}
    self.shows_with_open_time_slots(@shows_at_venue_per_day)
  end

  def shows_with_open_time_slots(shows_at_venue_this_day)
    @array_of_events_with_free_blocks = []
    current_time_check = Time.parse("2016-10-06 17:00:00").to_s
    current_time_check.sub! '-0500', 'UTC'
    current_time_check = Time.parse(current_time_check)
    puts "current_time_check is #{current_time_check}"
    i = 0
    empty_block_count = 0
    start_of_show = shows_at_venue_this_day[i].start_date_time
    puts "start_of_show is #{start_of_show}"

    until current_time_check == start_of_show
      empty_block_count += 1
      puts "empty_block_count is #{empty_block_count}"
      if empty_block_count == 4
        puts "ADD AN EMPTY HOUR BLOCK..."
        empty_block_count = 0
      end
      current_time_check = current_time_check + 15*60
      puts "current_time_check is #{current_time_check}"
    end

    if empty_block_count == 3
      puts "ADD 45 MINUTE BLOCK HERE"
    elsif empty_block_count == 2
      puts "ADD 30 MINUTE BLOCK HERE"
    elsif empty_block_count == 1
      puts "ADD 15 MINUTE BLOCK HERE"
    end

    puts "ADD SHOW BLOCK HERE"
    i += 1
    puts "i is #{i}"
  end

  # returns [#<Event:0x007fcf920a1f90
  # id: 1,
  # artist_id: 1,
  # venue_id: 1,
  # minimum_age: "21",
  # start_date_time: Thu, 06 Oct 2016 19:00:00 UTC +00:00,
  # end_date_time: Thu, 06 Oct 2016 19:30:00 UTC +00:00,
  # created_at: Mon, 04 Apr 2016 14:56:38 UTC +00:00,
  # updated_at: Mon, 04 Apr 2016 14:56:38 UTC +00:00>]
  # (array of events for each venue on this day--this is Thursday @ venue 1)

end