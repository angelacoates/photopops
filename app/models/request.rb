class Request < ApplicationRecord
  has_many :photos
  belongs_to :requestor, class_name: 'User'
  belongs_to :photographer, class_name: 'User'

  validates :name, presence: true
  validates :occassion, presence: true
  validates :contact, presence: true
end
