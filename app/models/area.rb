class Area < ApplicationRecord
    has_many :area_concerns
    has_many :concerns, through: :area_concnerns

    has_many :categories
    
end
