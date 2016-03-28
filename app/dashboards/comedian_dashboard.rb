require "administrate/base_dashboard"

class ComedianDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    events: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    genre: Field::String,
    origin: Field::String,
    website: Field::String,
    bio: Field::Text,
    image: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    headline_order: Field::Number,
    type: Field::String,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :events,
    :id,
    :name,
    :genre,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :events,
    :id,
    :name,
    :genre,
    :origin,
    :website,
    :bio,
    :image,
    :created_at,
    :updated_at,
    :headline_order,
    :type,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :events,
    :name,
    :genre,
    :origin,
    :website,
    :bio,
    :image,
    :headline_order,
    :type,
  ]

  # Overwrite this method to customize how comedians are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(comedian)
  #   "Comedian ##{comedian.id}"
  # end
end
