class Request < ApplicationRecord
  has_many :photos
  belongs_to :requestor, class_name: 'User', foreign_key: :requestor_id
  validates :name, presence: true
  validates :occassion, presence: true
  validates :contact, presence: true

end
