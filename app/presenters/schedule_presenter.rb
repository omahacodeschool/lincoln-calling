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
      end
    end
    if @shows_at_venue_per_day != []
      @shows_at_venue_per_day.sort_by! { |obj| obj.start_date_time}
      shows_with_blanks
      fill_out_final_blanks
    end
    return @shows_with_blanks
  end

  def shows_with_blanks
    @shows_with_blanks = []
    @current_time_check = DateTime.new(2016,10,06,17,00,00, '+0')
    i = 0
    until i >= @shows_at_venue_per_day.length
      start_of_show = @shows_at_venue_per_day[i].start_date_time
      find_show_start_time(start_of_show)
      @shows_with_blanks << @shows_at_venue_per_day[i]
      @current_time_check = @shows_with_blanks.last.end_date_time
      check_previous_end_time(start_of_show, end_time_of_previous_show)
      i += 1
    end
    return @shows_with_blanks
  end

  def find_show_start_time(start_of_show)
    empty_block_count = 0
    check_if_show_within_hour(start_of_show)
    while @current_time_check <= start_of_show
      if empty_block_count == 4
        @shows_with_blanks << Event.new(start_date_time: @current_time_check - 1.hour, end_date_time: @current_time_check)
        check_if_show_within_hour(start_of_show)
        empty_block_count = 0
      else
        @current_time_check += 15.minutes
        empty_block_count += 1
      end
    end
    return @shows_with_blanks
  end

  def check_if_show_within_hour(start_of_show)
    if start_of_show == @current_time_check + 45.minutes
      @shows_with_blanks << Event.new(start_date_time: @current_time_check, end_date_time: @current_time_check + 45.minutes)
    elsif start_of_show == @current_time_check + 30.minutes
      @shows_with_blanks << Event.new(start_date_time: @current_time_check, end_date_time: @current_time_check + 30.minutes)
    elsif start_of_show == @current_time_check + 15.minutes
      @shows_with_blanks << Event.new(start_date_time: @current_time_check, end_date_time: @current_time_check + 15.minutes)
    end

    if @shows_with_blanks.empty? == false
      @current_time_check = @shows_with_blanks.last.end_date_time
    end
    return @shows_with_blanks
  end

  def end_time_of_previous_show
    if @shows_with_blanks.last != nil
      end_of_previous_show = @shows_with_blanks.last.end_date_time
    end
    return end_of_previous_show
  end

  def check_previous_end_time(start_of_show, end_time_of_previous_show)
    if end_time_of_previous_show != nil || end_time_of_previous_show != start_of_show
      if end_time_of_previous_show.strftime("%M").include? "15"
        if end_time_of_previous_show == start_of_show - 15.minutes
          @shows_with_blanks << Event.new(start_date_time: end_time_of_previous_show, end_date_time: start_of_show)
        elsif end_time_of_previous_show == start_of_show - 30.minutes
          @shows_with_blanks << Event.new(start_date_time: end_time_of_previous_show, end_date_time: start_of_show)
        else
          @shows_with_blanks << Event.new(start_date_time: end_time_of_previous_show, end_date_time: end_time_of_previous_show + 45.minutes)
        end
      elsif end_time_of_previous_show.strftime("%M").include? "30"
        if end_time_of_previous_show == start_of_show - 15.minutes
          @shows_with_blanks << Event.new(start_date_time: end_time_of_previous_show, end_date_time: start_of_show)
        else
          @shows_with_blanks << Event.new(start_date_time: end_time_of_previous_show, end_date_time: end_time_of_previous_show + 30.minutes)
        end
      elsif end_time_of_previous_show.strftime("%M").include? "45"
        @shows_with_blanks << Event.new(start_date_time: end_time_of_previous_show, end_date_time: end_time_of_previous_show + 15.minutes)
      end
    end
    @current_time_check = @shows_with_blanks.last.end_date_time
    return @shows_with_blanks
  end

  def fill_out_final_blanks
    @current_time_check = end_time_of_previous_show
    festival_end = DateTime.new(2016,10,07,02,00,00, '+0')
    remaining_hours = TimeDifference.between(end_time_of_previous_show, festival_end).in_hours.to_i
    remaining_hours.times do
      @current_time_check += 1.hour
      @shows_with_blanks << Event.new(start_date_time: @current_time_check-1.hour, end_date_time: @current_time_check)
    end
    return @shows_with_blanks
  end

end