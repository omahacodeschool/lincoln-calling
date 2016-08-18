class VenuePresenter

  def initialize(event_object_array)
    @event_array = event_object_array
  end

  def events_with_venue_and_artist_info()
    final_info = []
    if @event_array.empty?
      return final_info
    else
      @event_array.each do | event |
        id = event.id
        artist = event.artist.name
        artist_id = event.artist.id
        start_time = event.starttime
        end_time = event.endtime
        venue_id = event.venue_id
        venue_and_artist = "#{event.artist.name} at #{event.venue.name}"
        final_info << {artist_id: artist_id, venue_and_artist: venue_and_artist, start_time: start_time, end_time: end_time, venue_id: venue_id}
      end
    end
    return final_info
  end
end
