class RemovePhotographerIdFromRequest < ActiveRecord::Migration[5.0]
  def change
    remove_column :requests, :photographer_id
  end
end
