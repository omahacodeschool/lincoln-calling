class SidebarsController  < ActionController::Base
  def events
    @events = Event.all
    @days = ["Thursday","Friday","Saturday"]
  end
end