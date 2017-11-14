class GameCard < ApplicationRecord
  belongs_to :game
  belongs_to :noun_template
  belongs_to :play_card_answer
end
