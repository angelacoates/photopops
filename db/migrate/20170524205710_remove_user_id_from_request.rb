class RemoveUserIdFromRequest < ActiveRecord::Migration[5.0]
  def change
    remove_column :requests, :user_id, :string
  end
end
