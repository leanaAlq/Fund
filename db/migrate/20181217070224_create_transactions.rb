class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :shareholder_id
      t.boolean :is_approved

      t.timestamps
    end
  end
end
