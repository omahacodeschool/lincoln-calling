class GenresController  < ApplicationController
  def view
    @genre = Genre.find_by_id(params[:id])
    @artists = @genre.artists
  end

end