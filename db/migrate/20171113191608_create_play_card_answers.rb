class CreatePlayCardAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :play_card_answers do |t|
      t.text :body

      t.timestamps
    end
  end
end
