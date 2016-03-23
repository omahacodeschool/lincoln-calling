class SidebarsController  < ActionController::Base
  def eventssidebar
    @events = Event.all
  end
end