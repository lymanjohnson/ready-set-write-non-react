class Relationship < ApplicationRecord
    belongs_to :play_card_answer
    belongs_to :other_card, :class_name => 'PlayCardAnswer'
end
