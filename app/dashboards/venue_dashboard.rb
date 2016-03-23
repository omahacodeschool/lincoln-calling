require "administrate/base_dashboard"

class VenueDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    address: Field::String,
    info: Field::String,
    img: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    coordinates_lattitude: Field::Number,
    coordinates_longitude: Field::Number,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :address,
    :info,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :address,
    :info,
    :img,
    :created_at,
    :updated_at,
    :coordinates_lattitude,
    :coordinates_longitude,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :address,
    :info,
    :img,
    :coordinates_lattitude,
    :coordinates_longitude,
  ]

  # Overwrite this method to customize how venues are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(venue)
  #   "Venue ##{venue.id}"
  # end
end
