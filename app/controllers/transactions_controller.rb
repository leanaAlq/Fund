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

    send_simple_message

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

  def send_simple_message
    RestClient.post "https://api:a8bf693fc2be64b2509d1c2df87585ef-41a2adb4-afebe40a@api.mailgun.net/v3/sandbox9532c00630ea4ee1a9341bedaf73f2e7.mailgun.org/messages",
                    :from => "صندوق القرض الحسن <postmaster@sandbox9532c00630ea4ee1a9341bedaf73f2e7.mailgun.org>",
                    :to => "<leana.a.q@gmail.com>",
                    :subject => "طلب قرض جديد",
                    :text => " <h1>hello</h1>مرحبا أحمد ، هناك طلب قرض جديد بانتظار موافقتك "
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
