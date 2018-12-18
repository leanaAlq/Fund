class CreateShareholders < ActiveRecord::Migration[5.2]
  def change
    create_table :shareholders do |t|
      t.string :name
      t.integer :deposit
      t.string :gender
      t.string :mobile
      t.string :iban

      t.timestamps
    end
  end
end
