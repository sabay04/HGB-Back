class Api::V001::AreasController < ApplicationController

    def index
        render json: Area.all
    end 

end
