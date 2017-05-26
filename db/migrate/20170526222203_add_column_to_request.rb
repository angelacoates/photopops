class AddColumnToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :name, :string
    add_column :requests, :contact, :integer
    add_column :requests, :occassion, :string
    add_column :requests, :pro_camera, :boolean
    add_column :requests, :needed_for_entire_event, :boolean
    add_column :requests, :special_instructions, :text
  end
end
