class CreateAreaConcerns < ActiveRecord::Migration[5.2]
  def change
    create_table :area_concerns do |t|
      t.references :area, foreign_key: true
      t.references :concern, foreign_key: true

      t.timestamps
    end
  end
end
