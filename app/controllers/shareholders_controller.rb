class ShareholdersController < ApplicationController
  def index
    @shareholders = Shareholder.all
  end

  def show
    @shareholder = Shareholder.find_by(id: params[:id])
    if @shareholder
      session[:shareholder_id] = @shareholder.id
    end
  end

  def new
    @shareholder = Shareholder.new
  end

  def create
    account = Account.first
    Account.first.shareholders.create shareholder_params
    redirect_to account_path(account)
  end

  def edit
    @shareholder = Shareholder.find_by(id: params[:id])
  end

  def update
  end

  def authenticate
    shareholder = Shareholder.find_by(mobile: params[:mobile])
    shareholder.nil? ? (redirect_to request.referrer) : (redirect_to accounts_path)
  end

  def destroy
    account = Account.first
    shareholder = Shareholder.find_by(id: params[:id])
    shareholder.destroy
    redirect_to account_path account
  end

  private

  def shareholder_params
    params.require(:shareholder).permit(:name, :deposit, :gender, :mobile, :iban)
  end
end
