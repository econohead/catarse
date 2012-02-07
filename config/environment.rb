# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Catarse::Application.initialize!

# load certificates
  require "openid/fetchers"
  OpenID.fetcher.ca_file = "#{Rails.root}/config/ca-bundle.crt"