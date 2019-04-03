class Ingredient < ApplicationRecord
    has_many :formula_ingredients
    has_many :formulas, through: :formula_ingredients
    
    has_many :ingredient_concerns
    has_many :concerns, through: :ingredient_concerns

end
