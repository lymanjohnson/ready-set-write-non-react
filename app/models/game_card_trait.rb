class GameCardTrait < ApplicationRecord
  belongs_to :game_card
  belongs_to :trait_template
  belongs_to :play_trait_answer
end
