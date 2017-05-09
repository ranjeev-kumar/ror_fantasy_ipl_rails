class Player < ActiveRecord::Base
  belongs_to :franchise
  has_many :mathces
  has_many :score_cards
end
