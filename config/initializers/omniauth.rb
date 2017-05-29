Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'], info_fields: 'name,email'
  provider :instagram, ENV['INSTAGRAM_CLIENT_ID'], ENV['INSTAGRAM_CLIENT_SECRET'], info_fields: 'name,email'

end
