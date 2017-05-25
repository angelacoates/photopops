class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :user_id
      t.string :photographer_id
      t.string :photo_id

      t.timestamps
    end
  end
end
