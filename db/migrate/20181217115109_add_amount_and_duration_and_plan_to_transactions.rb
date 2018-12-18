class AddAmountAndDurationAndPlanToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :amount, :integer
    add_column :transactions, :duration, :integer
    add_column :transactions, :plan, :integer
  end
end
