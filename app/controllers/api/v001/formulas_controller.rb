class Api::V001::FormulasController < ApplicationController


    # full crud 
    def index
        render json: Formula.all
    end 

end
