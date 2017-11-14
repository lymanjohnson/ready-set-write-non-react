class AddReferences < ActiveRecord::Migration[5.1]
  def change
    add_reference :plays, :user, foreign_key: true
    add_reference :plays, :game, foreign_key: true

    add_reference :play_card_answers, :play, foreign_key: true

    add_reference :relationships, :play_card_answer, :class_name => "PlayCardAnswer"
    add_reference :relationships, :other_card, :class_name => "PlayCardAnswer"

    add_reference :play_trait_answers, :play_card_answer, foreign_key: true

    add_reference :game_cards, :game, foreign_key: true
    add_reference :game_cards, :card_template, foreign_key: true
    add_reference :game_cards, :play_card_answer, foreign_key: true

    add_reference :game_card_traits, :game_card, foreign_key: true
    add_reference :game_card_traits, :trait_template, foreign_key: true
    add_reference :game_card_traits, :play_trait_answer, foreign_key: true

  end
end
