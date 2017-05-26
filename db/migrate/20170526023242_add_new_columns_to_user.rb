class AddNewColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :pro_camera, :boolean
    add_column :users, :rating, :decimal
    add_column :users, :opt_in, :boolean
  end
end
