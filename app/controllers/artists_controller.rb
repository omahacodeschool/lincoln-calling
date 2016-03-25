class ArtistsController < ApplicationController

  def index
    @artists = Artist.where(:is_band => true)
  end

  def index_comedians
    @comedians = Artist.where(:is_band => false)
  end
end