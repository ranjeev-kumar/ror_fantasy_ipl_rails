require "administrate/base_dashboard"

class ScoreCardDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    player: Field::PlayerField.with_options(searchable: false),
    match: Field::BelongsTo,
    id: Field::Number,
    run_scored: Field::Number,
    ball_played: Field::Number,
    four: Field::Number,
    six: Field::Number,
    over: Field::Number,
    maiden: Field::Number,
    run_given: Field::Number,
    wicket: Field::Number,
    catch: Field::Number,
    run_out: Field::Number,
    stump: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :player,
    :match,
    :id,
    :run_scored,
    :four,
    :six,
    :over,
    :run_given,
    :wicket,
    :catch,
    :run_out,
    :stump,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :player,
    :match,
    :id,
    :run_scored,
    :ball_played,
    :four,
    :six,
    :over,
    :maiden,
    :run_given,
    :wicket,
    :catch,
    :run_out,
    :stump,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :player,
    :match,
    :run_scored,
    :ball_played,
    :four,
    :six,
    :over,
    :maiden,
    :run_given,
    :wicket,
    :catch,
    :run_out,
    :stump,
  ].freeze

  # Overwrite this method to customize how score cards are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(score_card)
  #   "ScoreCard ##{score_card.id}"
  # end
end
