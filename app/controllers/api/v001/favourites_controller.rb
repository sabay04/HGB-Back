class Api::V001::FavouritesController < ApplicationController

    def index
        @favourties = Favourite.all
        render json: @favourties
    end 

    def create 
        @favourite = Favourite.new(favourite_params)
        if @favourite.valid?
        
            @favourite.save 
            render json: @favourite
        else 
            render json: 'something went wrong adding this to favourites'
        end 
    end 

    def destroy
        @favourite = Favourite.find(params[:id])
        if @favourite.destroy
            render json: @favourite
           else 
            render json: @favourite.errors.full_messages
           end 
    end 

    private 

    def favourite_params
        params.require(:favourite).permit(:user_id, :formula_id)
     end 


end

