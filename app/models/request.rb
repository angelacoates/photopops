class Request < ApplicationRecord
  has_many :photos
  belongs_to :requestor, class_name: 'User'
  belongs_to :photographer, class_name: 'User'
  validates :name, presence: true
  validates :occassion, presence: true
  validates :contact, presence: true
  validates_format_of :contact, with: /\d[0-9]\)*\z/, message: 'Not a valid phone number'
end
