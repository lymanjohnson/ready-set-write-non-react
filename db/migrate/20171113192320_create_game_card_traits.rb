class CreateGameCardTraits < ActiveRecord::Migration[5.1]
  def change
    create_table :game_card_traits do |t|
      t.text :hint
      t.text :default_body

      t.timestamps
    end
  end
end
