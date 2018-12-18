class AddDefaultToApprovedInTransaction < ActiveRecord::Migration[5.2]
  def change
    change_column :transactions, :is_approved, :boolean, default: false
  end
end
