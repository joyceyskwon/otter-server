class Api::V1::AuthController < ApplicationController

  def login
    @user = User.find_by(params[:username])
    if @user && @user.authenticate(params[:password])
      token = encode_token(@user.id)
      render json: {
        user: UserSerializer.new(@user),
        token: token
      }
    else
      render json: {errors: "User not found"}
    end
  end

  def show_user_from_token
    if current_user
      render json: current_user
    else
      render json: {errors: "No id present on headers"}
    end
  end

end
