class ArtistsController < ApplicationController
  def index
    @artists = Band.all
  end
  def index_comedians
    @comedians = Comedian.all
  end
end