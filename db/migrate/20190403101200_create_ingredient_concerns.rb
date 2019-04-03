class CreateIngredientConcerns < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_concerns do |t|
      t.references :ingredient, foreign_key: true
      t.references :concern, foreign_key: true

      t.timestamps
    end
  end
end
