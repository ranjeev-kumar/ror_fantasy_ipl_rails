require "administrate/base_dashboard"

class TeamPlayerScoreDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    team: Field::BelongsTo,
    player: Field::BelongsTo,
    match: Field::BelongsTo,
    id: Field::Number,
    score: Field::String,
    run: Field::String,
    wicket: Field::String,
    catch: Field::String,
    run_out: Field::String,
    stumpig: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :team,
    :player,
    :match,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :team,
    :player,
    :match,
    :id,
    :score,
    :run,
    :wicket,
    :catch,
    :run_out,
    :stumpig,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :team,
    :player,
    :match,
    :score,
    :run,
    :wicket,
    :catch,
    :run_out,
    :stumpig,
  ].freeze

  # Overwrite this method to customize how team player scores are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(team_player_score)
  #   "TeamPlayerScore ##{team_player_score.id}"
  # end
end
