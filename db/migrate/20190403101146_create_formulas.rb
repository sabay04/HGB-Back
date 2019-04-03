class CreateFormulas < ActiveRecord::Migration[5.2]
  def change

    create_table :areas do |t|
      t.string :name

      t.timestamps
    end
    

    create_table :categories do |t|
      t.string :name
      t.references :area, foreign_key: true

      t.timestamps
    end

    create_table :formulas do |t|
      t.string :title
      t.string :image
      t.text :description
      t.text :directions
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
