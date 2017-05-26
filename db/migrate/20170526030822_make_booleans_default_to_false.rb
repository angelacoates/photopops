class MakeBooleansDefaultToFalse < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :pro_camera, :boolean, default: false
    change_column    :users, :opt_in, :boolean, default: false
  end
end
