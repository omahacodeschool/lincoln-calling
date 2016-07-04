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
        results = PgSearch.multisearch(params[:search_input])
        
        @headliners = []
        @supporting_acts = []
        
        results.each do |result|
            if result.searchable_type == "Artist"
                band = Band.find(result.searchable_id)
                if band != nil
                    if band.headliner == true
                        @headliners.push(band)
                    else
                        @supporting_acts.push(band)
                    end
                end
            end
        end
        
        @headliners = Band.where(id: @headliners.map(&:id))
        @supporting_acts = Band.where(id: @supporting_acts.map(&:id))
        
        @search = params[:search_input]
        
        render :template => "artists/index"
    end

    def crop_image
        @artist = Artist.new
    end
    
    def show
        @artist = Artist.find(params[:id])
        @events = @artist.events
        @concerts = []
        @events.each do |event|
            @concerts.push({ venue: Venue.find(event.venue_id).name, start_time: event.start_date_time.strftime("%A, %b. %-d @ %-l:%M %P") })
        end
        render json: { artist: @artist.to_json, concerts: @concerts.to_json }
    end
    
    def prev
        @artist = Band.find(params[:id])
        order = @artist.headline_order - 1
        @prev_artist = Band.find_by(headline_order: order)
        if @prev_artist == nil
            @prev_artist = Band.order("headline_order DESC").first
        end
        render json: { id: @prev_artist.id }
    end
    
    def next
        @artist = Band.find(params[:id])
        order = @artist.headline_order + 1
        @next_artist = Band.find_by(headline_order: order)
        if @next_artist == nil
            @next_artist = Band.order("headline_order ASC").first
        end
        render json: { id: @next_artist.id }
    end
end