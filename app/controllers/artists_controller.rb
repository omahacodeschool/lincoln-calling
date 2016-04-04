class ArtistsController < ApplicationController

  def index
    @artists = Band.all
  end

  def index_comedians
    @comedians = Comedian.all
  end

  def search
    @artist_search_results = Artist.search_by_name(params[:search_input])
  end
  
end