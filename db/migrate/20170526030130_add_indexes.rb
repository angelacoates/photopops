class AddIndexes < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :request_id, :integer

    add_index :photos, :request_id
    add_index :requests, :photographer_id
    add_index :requests, :requestor_id
  end
end
