class Api::V001::AuthController < ApplicationController
    wrap_parameters :user, include: [:username,:password]
    skip_before_action :authorized, only: [:create]


  def create
  @user = User.find_by(username: user_login_params[:username])
    #authenticate comes from BCrypt
   
    if @user && @user.authenticate(user_login_params[:password])
        #encoded token comes from the application controller
      @token = encode_token({ user_id: @user.id})

      render json: { user: UserSerializer.new(@user), token: @token }, status: :authorized
    else
      render json: { message: "Invalid username or password" }, status: :unauthorized
    end
  end

  private
  def user_login_params
    params.require(:user).permit(:username, :password)
  end

end