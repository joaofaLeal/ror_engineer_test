Rails.application.configure do

  # Customers variables
  # config.x.document_type = 'Citizen ID'

  # Simcards variables
  # config.x.iccid.size =20
  # config.x.iccid.maxlength = 20
  # config.x.iccid.placeholder = '0123456789012345678A'
  # config.x.phone_number.min = 50600000000
  # config.x.phone_number.max = 50699999999
  # config.x.phone_number.maxlength = 11
  # config.x.phone_number.placeholder = '50672456890'
  # config.x.contract.size = 5
  # config.x.contract.maxlength = 5
  # config.x.contract.placeholder = '01234'

  # Services variables
  # config.x.typeservices = %w(HFC DTH GPON COPPER MOBILE)
  # config.x.subtypeservices = %w(POSTPAID HYBRID TV INTERNET VOICE)

  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  # Log rotation
  config.logger = Logger.new(Rails.root.join("log", Rails.env + ".log"), 5, 100*1024*1024)
end
