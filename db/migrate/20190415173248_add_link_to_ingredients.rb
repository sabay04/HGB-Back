class AddLinkToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :link, :string
  end
end
