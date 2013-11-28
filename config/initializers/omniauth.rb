require 'openid/store/filesystem'

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_apps,
           :domain => 'crowdint.com',
           :store => OpenID::Store::Filesystem.new('/tmp')
end

OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}