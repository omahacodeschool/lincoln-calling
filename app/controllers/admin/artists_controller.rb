module Admin
  class ArtistsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Artist.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Artist.find_by!(slug: param)
    # end

    def artist_params
      params.require(:artist).permit(:image_crop_x, :image_crop_y, :image_crop_w, :image_crop_h, ....)
    end

    def create
      @artist = Artist.new(user_params)
      respond_to do |format|
        if @artist.save
          format.html {
            if params[:atist][:image].present?
              render :crop  ## Render the view for cropping
            else
              redirect_to @artist, notice: 'Artist was successfully created.'
            end
          }
          format.json { render action: 'show', status: :created, location: @artist }
        else
          format.html { render action: 'new' }
          format.json { render json: @artist.errors, status: :unprocessable_entity }
        end
      end
    end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
