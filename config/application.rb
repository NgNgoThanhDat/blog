require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
 #    config.assets.version = '1.0'
    config.assets.initialize_on_precompile = false


	# config.assets.raise_runtime_errors = false
	# config.assets.unknown_asset_fallback = false
  end
end
