class AddRequestorIdToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :requestor_id, :string
  end
end
