class CreateFormulaIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :formula_ingredients do |t|
      t.references :ingredient, foreign_key: true
      t.references :formula, foreign_key: true
      t.decimal :percentage

      t.timestamps
    end
  end
end
