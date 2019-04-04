class Api::V001::UsersController < ApplicationController

    #full crud 


    def index
        render json: User.all
    end 
    
end
