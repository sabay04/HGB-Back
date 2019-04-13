class Api::V001::UsersController < ApplicationController
  wrap_parameters :user, include: [:username, :email, :password]
    #full crud 


    def index
        render json: User.all
    end 

    def create 
        @user = User.new(user_params)
        if @user.valid? 
            @user.save 
            render json: @user 
        else 
            render json: {error: "profile could not be made"}
        end 
    end 

    def login 
        
        @user = User.find_by(username: user_params[:username])
        
        if @user && @user.authenticate(user_params[:password])
        render json: @user 
        else 
        render json: {error: "email or password not found"}
        end 
    end 


    private 

    def user_params
      params.require(:user).permit(:username, :password, :email)
    end 
    
    
end
