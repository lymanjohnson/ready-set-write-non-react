class CreateGameCards < ActiveRecord::Migration[5.1]
  def change
    create_table :game_cards do |t|
      t.text :hint
      t.text :default_body

      t.timestamps
    end
  end
end
