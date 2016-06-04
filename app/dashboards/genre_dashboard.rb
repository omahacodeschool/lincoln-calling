require "administrate/base_dashboard"

class GenreDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    name: Field::String,
    image: CarrierwaveField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    artists: Field::HasMany
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :image,
    :created_at,
    :artists
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :name,
    :image,
    :created_at,
    :updated_at,
    :artists
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :image,
    :artists
  ]

  # Overwrite this method to customize how genres are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(genre)
    "#{genre.name}"
  end
end
