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
    @shows_at_venue_per_day.sort_by!{ |obj| obj.start_date_time}
    start_time = shows_start_time(@shows_at_venue_per_day)
    start_time_first_show = start_time_and_first_show(start_time, @shows_at_venue_per_day)
  end

  def shows_start_time(shows_at_venue_this_day)
    @array_of_events_until_start = []
    current_time_check = Time.parse("2016-10-06 17:00:00").to_s
    current_time_check.sub! '-0500', 'UTC'
    current_time_check = Time.parse(current_time_check)
    puts "current_time_check is #{current_time_check}"
    empty_block_count = 0
    start_of_show = shows_at_venue_this_day[0].start_date_time
    puts "start_of_show is #{start_of_show}"

    until current_time_check == start_of_show

      if empty_block_count == 4
        @array_of_events_until_start = check_if_show_within_hour(current_time_check, start_of_show, @array_of_events_until_start)
        empty_block_count = 0
      end

      current_time_check = current_time_check + 15*60
      puts "current_time_check is #{current_time_check}"

      empty_block_count += 1
      puts "empty_block_count is #{empty_block_count}"
    end

    puts "ADD SHOW BLOCK HERE"
    return @array_of_events_until_start
  end

  def start_time_and_first_show(array_of_events_until_start, shows_at_venue_this_day)
    @shows_with_open_time_slots = []
    array_of_events_until_start.each do |blank|
      @shows_with_open_time_slots << blank
    end
    @shows_with_open_time_slots << shows_at_venue_this_day[0]
    return @shows_with_open_time_slots
  end

  def check_if_show_within_hour(current_time_check, start_of_show, array_of_events_until_start)
    if start_of_show == current_time_check + 45*60
      array_of_events_until_start << Event.new(start_date_time: current_time_check, end_date_time: current_time_check + 45*60)
    elsif start_of_show == current_time_check + 30*60
      array_of_events_until_start << Event.new(start_date_time: current_time_check, end_date_time: current_time_check + 30*60)
    elsif start_of_show == current_time_check + 15*60
      array_of_events_until_start << Event.new(start_date_time: current_time_check, end_date_time: current_time_check + 15*60)
    else
      array_of_events_until_start << Event.new(start_date_time: current_time_check, end_date_time: current_time_check + 1.hour)
    end
    return array_of_events_until_start
  end


  # from Steven:
  # until shows.empty?
  #     if shows.first.start_date_time == current_time_check
  #       @array << shows.shift
  #     else
  #       @array << Event.new(start_date_time: current_time_check, end_date_time: current_time_check + 1.hour)
  #       @array<< shows.shift if shows.first.start_date_time == current_time_check
  #     end
  #     current_time_check = @array.last.end_date_time
  #   end
  #   @array

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