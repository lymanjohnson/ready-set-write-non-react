class PlayCardAnswer < ApplicationRecord
  belongs_to :play
  has_many :play_trait_answers
  has_one :game_card
  #
  has_many :relationships
  has_many :play_card_answers, through: :relationship
end
