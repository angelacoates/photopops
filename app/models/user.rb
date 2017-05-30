class User < ApplicationRecord
  has_many :requests, foreign_key: :requestor_id
  has_many :photos, through: :requests

#  geocoded_by :ip_address
#  after_validation :geocode
  #
  # have to add validations and conditions for when certain columns are validated
  # Omniauth will use this to build a *NEW* user for us
  def self.from_omniauth(authentication_data)
    user = User.where(provider: authentication_data['provider'],
                      uid: authentication_data['uid'],
                      email: authentication_data.info.email
                     ).first_or_create

    Rails.logger.debug "The user is #{user.inspect}"

    user.name         = authentication_data.info.name
    user.nickname     = authentication_data.info.nickname
    user.access_token = authentication_data.info.access_token

    user.save!

    Rails.logger.debug "After saving, the user is #{user.inspect}"

    return user
  end
end
