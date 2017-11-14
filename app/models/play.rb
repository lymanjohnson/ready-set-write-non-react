class Play < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :play_card_answers
end
