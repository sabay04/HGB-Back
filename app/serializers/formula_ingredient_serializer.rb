class FormulaIngredientSerializer < ActiveModel::Serializer
  attributes :id, :formula_id, :ingredient_id, :percentage
end
