class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :scientific_name
      t.text :suited_formulas
      t.string :image
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
