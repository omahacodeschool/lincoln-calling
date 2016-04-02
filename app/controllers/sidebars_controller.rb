class SidebarsController  < ActionController::Base
  def events
    @events = Event.all
    @days = ["Thursday","Friday","Saturday"]
  end
  def artists
    @artist = Artist.find_by_id(params[:id])
  end
end