class Game < ApplicationRecord
    has_many :plays
    has_many :game_cards
end
