class Api::V001::UsersController < ApplicationController
 wrap_parameters :user, include: [:username, :email, :password, :image]
 
 skip_before_action :authorized, only: [:create]
 
    #full crud 


    def index
        render json: User.all
    end 

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end 


    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), token: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    #   old create
    # def create 
    #     @user = User.new(user_params)
    #     if @user.valid? 
    #         @user.save 
    #         render json: @user 
    #     else 
    #         render json: {error: "profile could not be made"}
    #     end 
    # end 

    # def login 
        
    #     @user = User.find_by(username: user_params[:username])
        
    #     if @user && @user.authenticate(user_params[:password])
    #     render json: @user 
    #     else 
    #     render json: {error: "email or password not found"}
    #     end 
    # end 


    private 

    def user_params
      params.require(:user).permit(:username, :password, :email, :image)
    end 
    
    
end
