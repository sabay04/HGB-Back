class CreateFormulaConcerns < ActiveRecord::Migration[5.2]
  def change
    create_table :formula_concerns do |t|
      t.references :formula, foreign_key: true
      t.references :concern, foreign_key: true

      t.timestamps
    end
  end
end
