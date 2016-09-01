class EventsController  < ApplicationController
    def index
        if params[:day]
            @current_day = Event.where("extract(dow from start_date_time) = ?", DateTime.parse(params[:day]).wday).order(:start_date_time).first.start_date_time
        else
            first_event = Event.all.order(:start_date_time).first.start_date_time
            last_event = Event.all.order(:start_date_time).last.start_date_time - 6.hours

            if DateTime.now <= first_event
                @current_day = first_event
            elsif DateTime.now > first_event && DateTime.now <= last_event
                @current_day = Event.where("extract(dow from start_date_time) = ?", DateTime.now.wday).order(:start_date_time).first.start_date_time
            else
                @current_day = last_event
            end
        end

        all_day_events = Event.byday(@current_day)

        @first_event = all_day_events[0].start_date_time
        puts @first_event
        @last_event = all_day_events[all_day_events.length - 1].end_date_time.end_of_hour

        empty_venue_height = ((@last_event - @first_event) / 60) * 2
        @venues = Venue.order(:name)
        @schedule_string = ""

        if @first_event.strftime("%M") == "00"
            @schedule_height = empty_venue_height
        else
            @schedule_height = empty_venue_height + 120
        end

        @venues.each_with_index do |venue, index|
            events = venue.venue_events_by_day(@current_day)
            concerts_string = ""
            if events != []
                @schedule_string = @schedule_string + "<div class=\"concerts__venue\" style=\"height: " + @schedule_height.to_s + "px\">"
                events.each_with_index do |event, index|
                    if index == 0
                        margin_top = ((event.start_date_time - @first_event) / 60) * 2
                        next_event = events[index + 1]
                        if next_event != nil
                            margin_bottom = ((next_event.start_date_time - event.end_date_time) / 60) * 2
                        else
                            margin_bottom = 0
                        end
                        minutes = ((event.end_date_time - event.start_date_time) / 60) * 2
                        concerts_string = concerts_string +
                        "<div class=\"venue__concert\" data-id=\"" + event.artist.id.to_s + "\" style=\"height: " + minutes.to_s + "px; margin-top: " + margin_top.to_s + "px; margin-bottom: " + margin_bottom.to_s + "px\">" +
                            "<div class=\"concert__artist\"><div class=\"artist__name\">" + event.artist.name + "</div></div>" +
                        "</div>"
                    else
                        next_event = events[index + 1]
                        if next_event != nil
                            margin_bottom = ((next_event.start_date_time - event.end_date_time) / 60) * 2
                        else
                            margin_bottom = 0
                        end
                        minutes = ((event.end_date_time - event.start_date_time) / 60) * 2
                        concerts_string = concerts_string +
                        "<div class=\"venue__concert\" data-id=\"" + event.artist.id.to_s + "\" style=\"height: " + minutes.to_s + "px; margin-bottom: " + margin_bottom.to_s + "px\">" +
                            "<div class=\"concert__artist\"><div class=\"artist__name\">" + event.artist.name + "</div></div>" +
                        "</div>"
                    end
                end
            else
                @schedule_string = @schedule_string + "<div class=\"concerts__venue\" style=\"height: " + @schedule_height.to_s + "px\">"
            end
            @schedule_string = @schedule_string + concerts_string + "</div>"
        end
        @days = []
        @events = Event.all.order(:start_date_time).group_by(&:monthday)
        @events.each do |day|
            @days.push(day[0])
        end
        @artists = Artist.all
    end
end
