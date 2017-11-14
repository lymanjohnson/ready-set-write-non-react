class PlayTraitAnswer < ApplicationRecord
  belongs_to :play_card_answer
  has_one :game_card_trait
end
