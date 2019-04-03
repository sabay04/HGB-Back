class Concern < ApplicationRecord
    has_many :area_concerns
    has_many :areas, through: :area_conerns

    has_many :formula_concerns
    has_many :formulas, through: :formula_conerns

    has_many :ingredient_concerns
    has_many :ingredients, through: :ingredient_conerns
end
