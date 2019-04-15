class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :scientific_name, :image, :category,:description, :suited_formulas, :concerns, :link 

  def concerns 
    object.ingredient_concerns.map do |ing_con|
      { 
        'name' => ing_con.concern.name,
        'id' => ing_con.concern.id
      }
    end
  end 



end
