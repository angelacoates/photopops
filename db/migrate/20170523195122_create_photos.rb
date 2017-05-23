class CreatePhotos < ActiveRecord::Migration[5.0]
  belongs_to :user
  include ImageUploader[:image]

def change
    create_table :photos do |t|

t.timestamps
    end
  end
end
