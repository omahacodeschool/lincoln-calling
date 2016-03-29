class SponsorsController  < ActionController::Base

  def index
    @sponsors = Sponsor.all
  end

end