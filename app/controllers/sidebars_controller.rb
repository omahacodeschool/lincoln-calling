class SidebarsController  < ActionController::Base
  def events
    @thursdayevents = Event.byday("Thursday")
  end
end