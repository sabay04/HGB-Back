class Category < ApplicationRecord
  belongs_to :area
  has_many :formulas
end
