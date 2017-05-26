class ChangeContactToString < ActiveRecord::Migration[5.0]
  def change
    change_column :requests, :contact, :string
  end
end
