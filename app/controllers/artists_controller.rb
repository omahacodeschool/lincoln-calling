class ArtistsController < ApplicationController
    def index
        @headliners = Band.where(headliner: true)
        @supporting_acts = Band.where(headliner: false)
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
    
    def show
        @artist = Artist.find(params[:id])
        render json: @artist.to_json
    end
end