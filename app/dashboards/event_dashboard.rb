require "administrate/base_dashboard"

class EventDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    venue: Field::BelongsTo,
    artist: Field::BelongsTo,
    minimum_age: Field::String,
    start_date_time: Field::DateTime,
    end_date_time: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :venue,
    :artist,
    :start_date_time,
    :end_date_time,
    :minimum_age
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :venue,
    :artist,
    :minimum_age,
    :start_date_time,
    :end_date_time,
    :created_at,
    :updated_at
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :venue,
    :artist,
    :minimum_age,
    :start_date_time,
    :end_date_time
  ]

  # Overwrite this method to customize how events are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(event)
    "#{event.artist.name} @ #{event.venue.name} on #{event.monthday}: #{event.starttime}"
  end
end
