class CreateJoinTableAccountShareholder < ActiveRecord::Migration[5.2]
  def change
    create_join_table :accounts, :shareholders do |t|
      # t.index [:account_id, :shareholder_id]
      # t.index [:shareholder_id, :account_id]
    end
  end
end
