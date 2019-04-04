class Api::V001::FormulasController < ApplicationController


    # full crud 
    def index
        @formulas = Formula.all
        render json: @formulas, include:['ingredients', 'formula_ingredients' ]
    end 

end
