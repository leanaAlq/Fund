module ApplicationHelper
  def shareholders
    @shareholders = Shareholder.all
  end
end
