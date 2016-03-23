class EventsController  < ActionController::Base
  def list
    @events = Event.all
    render "index"
  end
end