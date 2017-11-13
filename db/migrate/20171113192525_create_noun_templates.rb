class CreateNounTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :noun_templates do |t|
      t.text :flavor
      t.text :tooltip

      t.timestamps
    end
  end
end
