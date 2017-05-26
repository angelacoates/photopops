class ChangeIdsFromStringToIntegers < ActiveRecord::Migration[5.0]
  def change
    change_column :requests, :photographer_id, 'integer USING CAST(photographer_id AS integer)'
    change_column :requests, :requestor_id, 'integer USING CAST(requestor_id AS integer)'
    remove_column :requests, :photo_id
  end
end
