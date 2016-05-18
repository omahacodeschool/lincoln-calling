class ArtistsController < ApplicationController
  def index
    @artists = Band.all
    @genres = Genre.all
  end
  def index_comedians
    @artists = Comedian.all
  end

  def search
    @artists = Artist.search_by_name(params[:search_input])
    @search = params[:search_input]
  end

  def crop_image
    @artist = Artist.new
  
end