class AddAuthCodeToShareholders < ActiveRecord::Migration[5.2]
  def change
    add_column :shareholders, :auth_code, :uuid
  end
end
