class Api::V1::AuthController < ApplicationController

  def login
    @user = User.find_by(username: params[:username])
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

  def get_user_from_token
    if curr_user
      render json: curr_user
    else
      render json: {errors: "No id present on headers"}
    end
  end

  def edit_curr_user
    if curr_user
      @user = curr_user
      @user.update(user_params)
      redirect_to json: curr_user
    else
      render json: {errors: "cannot update!"}
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :bank, :account_number, :monthly_income)
  end

end
