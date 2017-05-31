class AddAddressToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :address, :string
  end
end
