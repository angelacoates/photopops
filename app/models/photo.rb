class Photo < ApplicationRecord
  belongs_to :request
  include ImageUploader::Attachment.new(:image)


end
