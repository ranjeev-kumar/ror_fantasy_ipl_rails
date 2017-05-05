require "administrate/base_dashboard"

class TeamDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    players: Field::PlayerField.with_options(searchable: false),
    id: Field::Number,
    name: Field::String,
    owner: Field::String,
    home_ground: Field::String,
    captain: Field::String,
    coach: Field::String,
    official_team_site: Field::String,
    rank: Field::String,
    point: Field::Number.with_options(decimals: 2),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :owner,
    :players,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :players,
    :id,
    :name,
    :owner,
    :home_ground,
    :captain,
    :coach,
    :official_team_site,
    :rank,
    :point,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :players,
    :name,
    :owner,
    :home_ground,
    :captain,
    :coach,
    :official_team_site,
    :rank,
    :point,
  ].freeze

  # Overwrite this method to customize how teams are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(team)
  #   "Team ##{team.id}"
  # end
end
