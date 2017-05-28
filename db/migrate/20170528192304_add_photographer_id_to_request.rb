class AddPhotographerIdToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :photographer_id, :string
  end
end
