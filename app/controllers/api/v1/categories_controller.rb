class Api::V1::CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render json: @categories, status: :ok
  end

  def show
    @category = Category.find(params[:id])
    render json: @category, status: :ok
  end

  def create
    @category = Category.create(category_params)
    render json: @category
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
  
end
