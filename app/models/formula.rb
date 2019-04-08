class Formula < ApplicationRecord
  belongs_to :user
  belongs_to :category
  #has a areas through category

  has_many :formula_ingredients, dependent: :destroy
  has_many :ingredients, through: :formula_ingredients

  has_many :formula_concerns, dependent: :destroy
  has_many :concerns, through: :formula_concerns

  has_many :favourites, dependent: :destroy
  has_many :users, through: :favourites
  #users that have saved this formula 
  
end
