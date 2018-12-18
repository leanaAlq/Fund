class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def show
    @transaction = Transaction.find_by(id: params[:id])
  end

  def new
    @transaction = Transaction.new
  end

  def create
    Transaction.create(transaction_params)
    redirect_to transactions_path
  end

  def edit
    @transaction = Transaction.find_by(id: params[:id])
  end

  def update
    transaction = Transaction.find_by(id: params[:id])
    transaction.update(transaction_params)
    redirect_to transactions_path
  end

  def approve
    # Find the Transaction
    transaction = Transaction.find_by id: params[:id]
    # Update the approved column
    transaction.update is_approved: true
    transaction.save
    # Redirect to back
    redirect_to request.referrer
  end

  private

  def transaction_params
    params.require(:transaction).permit(:is_approved, :amount, :duration, :plan).merge(shareholder_id: session[:shareholder_id])
  end
end
