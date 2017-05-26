class Photo < ApplicationRecord
  belongs_to :request
  include ImageUploader[:image]

end
