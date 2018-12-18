class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find_by(id: params[:id])
  end

  def new
    @account = Account.new
  end

  def edit
  end
end
