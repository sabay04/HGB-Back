class Api::V001::IngredientsController < ApplicationController
    def index
        render json: Ingredient.all
    end 
end
