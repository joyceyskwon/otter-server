class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'user deleted'
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :bank, :account_number, :monthly_income)
  end

end
