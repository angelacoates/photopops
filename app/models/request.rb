class Request < ApplicationRecord
  has_many :photos
  belongs_to :requestor,class_name:"user"
  belongs_to :photographer,class_name:"user"
end
