class Api::V001::FavouritesController < ApplicationController

    def index
        render json: Favourite.all
    end 
end

