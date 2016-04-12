class VenuePresenter

  def initialize(event_object_array)
    @event_array = event_object_array
  end

  def venue_events_with_artist_info
    final_info = []
    if @event_array.empty?
      return final_info
    else
      @event_array.each do | event |
        id = event.id
        artist = event.artist.name
        start_time = event.starttime
        end_time = event.endtime
        final_info << {artist: artist, start_time: start_time, end_time: end_time}
      end
    end
    return final_info
  end

  def events_with_venue_and_artist_info()
    final_info = []
    if @event_array.empty?
      return final_info
    else
      @event_array.each do | event |
        id = event.id
        artist = event.artist.name
        start_time = event.starttime
        end_time = event.endtime
        venue_and_artist = "#{event.artist.name} at #{event.venue.name}."
        final_info << {venue_and_artist: venue_and_artist, start_time: start_time, end_time: end_time}
      end
    end
    return final_info
  end
end