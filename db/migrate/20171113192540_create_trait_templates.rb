class CreateTraitTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :trait_templates do |t|
      t.text :flavor
      t.text :tooltip

      t.timestamps
    end
  end
end
