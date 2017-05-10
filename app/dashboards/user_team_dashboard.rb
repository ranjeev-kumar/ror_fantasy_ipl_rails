require "administrate/base_dashboard"

class UserTeamDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::UserField.with_options(searchable: false),
    match: Field::BelongsTo,
    player: Field::PlayerField.with_options(searchable: false),
    id: Field::Number,
    power_player: Field::Boolean,
    bowling_point: Field::Number,
    batting_point: Field::Number,
    fielding_point: Field::Number,
    total_score: Field::Number.with_options(decimals: 2),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :match,
    :id,
    :player,
    :power_player,
    :batting_point,
    :bowling_point,
    :fielding_point,
    :total_score,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :match,
    :id,
    :player,
    :power_player,
    :batting_point,
    :bowling_point,
    :fielding_point,
    :total_score,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :match,
    :player,
    :power_player,
    :batting_point,
    :bowling_point,
    :fielding_point,
    :total_score,
  ].freeze

  # Overwrite this method to customize how user teams are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user_team)
  #   "UserTeam ##{user_team.id}"
  # end
end
