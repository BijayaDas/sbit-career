require File.expand_path('../boot', __FILE__)

require 'rails/all'
# require 'pdfkit'
require 'wicked_pdf'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SbitCareer
  class Application < Rails::Application
    config.action_controller.permit_all_parameters = true
     config.action_controller.asset_host = "http://localhost:3000"

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    # config.middleware.use PDFKit::Middleware, :print_media_type => true
    config.middleware.use WickedPdf::Middleware
    
  end
end
