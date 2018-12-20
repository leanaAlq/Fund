require "securerandom"

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
    shareholder = Shareholder.new shareholder_params
    shareholder.auth_code = SecureRandom.uuid
    shareholder.accounts << Account.first
    shareholder.save
    account_sid = Rails.application.credentials.dig(:twilio, :account_sid)
    auth_token = Rails.application.credentials.dig(:twilio, :auth_token)
    @client = Twilio::REST::Client.new(account_sid, auth_token)

    message = @client.messages
      .create(
        body: "Good Morning, this is leana saying hi. you are now a user",
        from: "+13073175798",
        to: "+966530604422",
      )
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
