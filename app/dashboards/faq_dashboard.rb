require "administrate/base_dashboard"

class FaqDashboard < Administrate::BaseDashboard
    # ATTRIBUTE_TYPES
    # a hash that describes the type of each of the model's fields.
    #
    # Each different type represents an Administrate::Field object,
    # which determines how the attribute is displayed
    # on pages throughout the dashboard.
    ATTRIBUTE_TYPES = {
        category: Field::String,
        question: Field::String,
        answer: Field::Text,
        order: Field::Number
    }

    # COLLECTION_ATTRIBUTES
    # an array of attributes that will be displayed on the model's index page.
    #
    # By default, it's limited to four items to reduce clutter on index pages.
    # Feel free to add, remove, or rearrange items.
    COLLECTION_ATTRIBUTES = [
        :question,
        :answer
    ]

    # SHOW_PAGE_ATTRIBUTES
    # an array of attributes that will be displayed on the model's show page.
    SHOW_PAGE_ATTRIBUTES = [
        :question,
        :answer
    ]

    # FORM_ATTRIBUTES
    # an array of attributes that will be displayed
    # on the model's form (`new` and `edit`) pages.
    FORM_ATTRIBUTES = [
        :category,
        :question,
        :answer,
        :order
    ]

    # Overwrite this method to customize how faqs are displayed
    # across all pages of the admin dashboard.
    #
    # def display_resource(faq)
    #   "Faq ##{faq.id}"
    # end
end
