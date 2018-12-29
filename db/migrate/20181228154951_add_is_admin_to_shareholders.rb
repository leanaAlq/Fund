class AddIsAdminToShareholders < ActiveRecord::Migration[5.2]
  def change
    add_column :shareholders, :is_admin, :boolean, default: false
  end
end
