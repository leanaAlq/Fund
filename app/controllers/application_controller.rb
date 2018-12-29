class ApplicationController < ActionController::Base
  def authenticate
    shareholder = Shareholder.find_by(mobile: params[:mobile])
    if shareholder.nil?
      redirect_to root_path
    else
      redirect_to accounts_path
      session[:mobile] = shareholder.mobile
    end
  end
end
