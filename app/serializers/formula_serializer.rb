class FormulaSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :description, :concerns ,:directions , :user_id, :category, :category_id,:area, :ingredients
  
  def category 
    object.category.name
  end 

  def concerns 
    object.formula_concerns.map do |form_con|
      { 
        'name' => form_con.concern.name,
        'id' => form_con.concern.id
      }
    end
  end 

  def area 
    object.category.area.name 
  end 
 
  def ingredients
    # object.id == formula_id
    object.formula_ingredients.map do |form_ing|
      {
        'percentage' => form_ing.percentage,
        'name' => form_ing.ingredient.name,
        'id' => form_ing.ingredient.id
      }
    end
  end

end
