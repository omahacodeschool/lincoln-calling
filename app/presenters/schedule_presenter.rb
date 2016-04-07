class SchedulePresenter

  def initialize(venue_object)
    @venue = venue_object
  end

  #this is the method actually being called in the view.
  def shows_at_venue_per_day(week_day)
    shows_at_venue = Event.where("venue_id" => @venue.id)
    @shows_at_venue_per_day = []
    @shows_with_open_time_slots = []
    shows_at_venue.each do |show|
      if show.weekday == week_day
        @shows_at_venue_per_day << show
      else
        next
      end
    end
    @shows_at_venue_per_day.sort_by!{ |obj| obj.start_date_time}
    shows_with_blanks
    return @shows_with_blanks
  end

  def shows_with_blanks
    @shows_with_blanks = []
    current_time_check = Time.parse("2016-10-06 17:00:00").to_s
    current_time_check.sub! '-0500', 'UTC'
    current_time_check = Time.parse(current_time_check)
    @i = 0

    until @i == @shows_at_venue_per_day.length
      puts "@shows_at_venue_per_day is #{@shows_at_venue_per_day} It's #{@shows_at_venue_per_day.length} elements in length."
      start_of_show = @shows_at_venue_per_day[@i].start_date_time

      array_of_events_until_show = find_show_start_time(current_time_check, start_of_show)
      puts "array_of_events_until_show is #{array_of_events_until_show}"
      blank_spaces_to_array(array_of_events_until_show)
      puts "blanks added to array--@shows_with_blanks is #{@shows_with_blanks}"
      @shows_with_blanks << @shows_at_venue_per_day[@i]
      puts "show added to array--@shows_with_blanks is #{@shows_with_blanks}"

      @i += 1
      puts "@i is #{@i}"
      current_time_check = end_time_of_previous_show
      puts "current_time_check is #{current_time_check}"
    end
  end

  def find_show_start_time(current_time_check, start_of_show)
    array_of_events_until_show = []
    empty_block_count = 0
    until current_time_check == start_of_show
      #check here if current time check is on the hour
      if empty_block_count == 4
        array_of_events_until_show << Event.new(start_date_time: current_time_check - 1.hour, end_date_time: current_time_check)
        array_of_events_until_show = check_if_show_within_hour(current_time_check, start_of_show, array_of_events_until_show)
        empty_block_count = 0
      end
      current_time_check = current_time_check + 15*60
      empty_block_count += 1
    end
    return array_of_events_until_show
  end

  def blank_spaces_to_array(array_of_events_until_show)
    array_of_events_until_show.each do |blank|
      @shows_with_blanks << blank
    end
    return @shows_with_blanks
  end

  def check_if_show_within_hour(current_time_check, start_of_show, array_of_events_until_show)
    if start_of_show == current_time_check + 45*60
      array_of_events_until_show << Event.new(start_date_time: current_time_check, end_date_time: current_time_check + 45*60)
      current_time_check = current_time_check + 45*60
    elsif start_of_show == current_time_check + 30*60
      array_of_events_until_show << Event.new(start_date_time: current_time_check, end_date_time: current_time_check + 30*60)
      current_time_check = current_time_check + 30*60
    elsif start_of_show == current_time_check + 15*60
      array_of_events_until_show << Event.new(start_date_time: current_time_check, end_date_time: current_time_check + 15*60)
      current_time_check = current_time_check + 15*60
    else
      array_of_events_until_show << Event.new(start_date_time: current_time_check - 1.hour, end_date_time: current_time_check)
    end
    return array_of_events_until_show
  end

  def end_time_of_previous_show
    end_of_previous_show = @shows_with_blanks.last.end_date_time
    puts "end_of_previous_show is #{end_of_previous_show}"
    return end_of_previous_show
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