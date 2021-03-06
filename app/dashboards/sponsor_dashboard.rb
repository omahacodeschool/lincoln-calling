require "administrate/base_dashboard"

class SponsorDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    name: Field::String,
    website: Field::String,
    premier: Field::Boolean,
    description: Field::Text,
    sponsor_order: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    logo: CarrierwaveField
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :name,
    :website,
    :premier,
    :logo
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :name,
    :website,
    :premier,
    :description,
    :sponsor_order,
    :created_at,
    :updated_at,
    :logo
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :website,
    :premier,
    :description,
    :sponsor_order,
    :logo
  ]

  # Overwrite this method to customize how sponsors are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(sponsor)
    "#{sponsor.name}"
  end
end
