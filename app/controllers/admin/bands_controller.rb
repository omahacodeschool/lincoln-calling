module Admin
  class BandsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Band.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Band.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
    def band_params
      params.require(:band).permit(:image_crop_x, :image_crop_y, :image_crop_w, :image_crop_h)
    end

    def create
      @band = Band.new(user_params)
      respond_to do |format|
        if @band.save
          format.html {
            if params[:band][:image].present?
              render :crop  ## Render the view for cropping
            else
              redirect_to @band, notice: 'Band was successfully created.'
            end
          }
          format.json { render action: 'show', status: :created, location: @band }
        else
          format.html { render action: 'new' }
          format.json { render json: @band.errors, status: :unprocessable_entity }
        end
      end
    end

  end
end
