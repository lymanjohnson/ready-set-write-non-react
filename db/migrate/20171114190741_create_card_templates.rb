class CreateCardTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :card_templates do |t|
      t.string :flavor
      t.text :tooltip

      t.timestamps
    end
  end
end
