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
end