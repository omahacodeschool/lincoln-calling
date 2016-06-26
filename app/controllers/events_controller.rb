class EventsController  < ApplicationController
    def index
        if params[:day]
            @current_day = params[:day].titleize
        else
            @current_day = Event.all.order(:start_date_time).first.start_date_time.strftime("%A")
        end
        
        @first_event = Event.where("extract(dow from start_date_time) = ?", DateTime.parse(@current_day).wday).order(:start_date_time).first.start_date_time
        @last_event = Event.where("extract(dow from start_date_time) = ?", DateTime.parse(@current_day).wday).order(:start_date_time).last.end_date_time
        empty_venue_height = ((@last_event - @first_event) / 60) * 2
        @venues = Venue.order(:name)
        @schedule_string = ""
        
        @venues.each_with_index do |venue, index|
            events_by_day = venue.events.group_by(&:weekday)
            events = events_by_day[@current_day]
            concerts_string = ""
            if events != nil
                @schedule_string = @schedule_string + "<div class=\"concerts__venue\">"
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
                        minutes = ((Event.first.end_date_time - Event.first.start_date_time) / 60) * 2
                        concerts_string = concerts_string + 
                        "<div class=\"venue__concert\" data-id=\"" + event.artist.id.to_s + "\" style=\"height: " + minutes.to_s + "px; margin-bottom: " + margin_bottom.to_s + "px\">" +
                            "<div class=\"concert__artist\"><div class=\"artist__name\">" + event.artist.name + "</div></div>" +
                        "</div>"
                    end
                end
            else
                @schedule_string = @schedule_string + "<div class=\"concerts__venue\" style=\"height: " + empty_venue_height.to_s + "px\">"
            end
            @schedule_string = @schedule_string + concerts_string + "</div>"
        end
        @days = []
        @events = Event.all.group_by(&:monthday)
        @events.each do |day|
            @days.push(day[0])
        end
        @artists = Artist.all
    end
end