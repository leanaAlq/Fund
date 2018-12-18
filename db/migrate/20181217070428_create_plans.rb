class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :amount
      t.date :start
      t.date :end
      t.string :transaction_id
      t.timestamps
    end
  end
end
