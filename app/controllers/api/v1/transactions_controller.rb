class Api::V1::TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
    render json: @transactions, status: :ok
  end

  def show
    @transaction = Transaction.find(params[:id])
    render json: @transaction, status: :ok
  end

  def create
    @transaction = Transaction.create(transaction_params)
    render json: @transaction
  end

  private

  def transaction_params
    params.require(:transaction).permit(:user_id, :category_id, :name, :date, :amount, :location)
  end
end
