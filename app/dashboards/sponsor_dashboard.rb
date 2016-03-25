require "administrate/base_dashboard"

class SponsorDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    website: Field::String,
    premier: Field::Boolean,
    description: Field::Text,
    logo: Field::String,
    sponsor_order: Field::Integer
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :premier,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    id: Field::Number,
    name: Field::String,
    website: Field::String,
    premier: Field::Boolean,
    description: Field::Text,
    logo: Field::String,
    sponsor_order: Field::Integer
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    name: Field::String,
    website: Field::String,
    premier: Field::Boolean,
    description: Field::Text,
    logo: Field::String,
    sponsor_order: Field::Integer
  }

  # Overwrite this method to customize how venues are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(venue)
  #   "Venue ##{venue.id}"
  # end
end
