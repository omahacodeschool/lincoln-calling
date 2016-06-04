require "administrate/base_dashboard"

class BandDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    events: Field::HasMany,
    name: Field::String,
    genres: Field::HasMany,
    origin: Field::String,
    website: Field::String,
    bio: Field::Text,
    image: CarrierwaveField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    headline_order: Field::Number
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :events,
    :name,
    :genres,
    :image
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :events,
    :name,
    :genres,
    :origin,
    :website,
    :bio,
    :image,
    :created_at,
    :updated_at,
    :headline_order
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :events,
    :name,
    :genres,
    :origin,
    :website,
    :bio,
    :image,
    :headline_order
  ]

  # Overwrite this method to customize how bands are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(band)
    "#{band.name}"
  end
end
