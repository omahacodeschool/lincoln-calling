require "administrate/base_dashboard"

class AboutDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    title: Field::String,
    user: Field::BelongsTo,
    article_content: Field::Text,
    image: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    publish_date_time: Field::DateTime,
    type: Field::String
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :title,
    :user,
    :article_content
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :title,
    :user,
    :article_content,
    :image,
    :created_at,
    :updated_at,
    :publish_date_time,
    :type
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :user,
    :article_content,
    :image,
    :publish_date_time,
    :type
  ]

  # Overwrite this method to customize how abouts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(about)
  #   "About"
  # end
end
