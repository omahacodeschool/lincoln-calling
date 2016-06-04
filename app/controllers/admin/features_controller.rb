module Admin
  class FeaturesController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Feature.all.paginate(10, params[:page])
    # end

    def create
        resource_params = params.require(resource_name).permit(:title, 
          :user_id, :article_content, :image, :publish_date_time, 
          :type)

        resource_params[:user_id] = current_user.id

        resource = resource_class.new(resource_params)

        if resource.save
          redirect_to(  
            [namespace, resource],
            notice: translate_with_resource("create.success"),
          )
        else
          render :new, locals: {
            page: Administrate::Page::Form.new(dashboard, resource),
          }
        end
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Feature.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
