# Be sure to restart your web server when you modify this file.

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
#ENV['RAILS_ENV'] ||= 'development'
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
#RAILS_GEM_VERSION = '1.2.5' unless defined? RAILS_GEM_VERSION
RAILS_GEM_VERSION = '2.0.2' unless defined? RAILS_GEM_VERSION
# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Added for Rails 2.0.2 support
  config.action_controller.session = { :session_key => "_spaces_session", :secret => "400a0a2c34d8e926254e2fbdc7e6cbe09b8a81badecb227f3b99f8a969f86ece4077a631c68a12eb6a3ea265b3c07bee66853216d65dac8a8623464dc997260b" } 
  
  # Settings in config/environments/* take precedence over those specified here

  # Skip frameworks you're not going to use (only works if using vendor/rails)
  # config.frameworks -= [ :action_web_service, :action_mailer ]

  # Only load the plugins named here, by default all plugins in vendor/plugins are loaded
  # config.plugins = %W( exception_notification ssl_requirement )

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Force all environments to use the same logger level
  # (by default production uses :info, the others :debug)
  # config.log_level = :debug

  # Use the database for sessions instead of the file system
  # (create the session table with 'rake db:sessions:create')
  # config.action_controller.session_store = :active_record_store

  # Use SQL instead of Active Record's schema dumper when creating the test database.
  # This is necessary if your schema can't be completely dumped by the schema dumper,
  # like if you have constraints or database-specific column types
  # config.active_record.schema_format = :sql

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector

  # Make Active Record use UTC-base instead of local time
  # config.active_record.default_timezone = :utc

  # Add new inflection rules using the following format
  # (all these examples are active by default):
  # Inflector.inflections do |inflect|
  #   inflect.plural /^(ox)$/i, '\1en'
  #   inflect.singular /^(ox)en/i, '\1'
  #   inflect.irregular 'person', 'people'
  #   inflect.uncountable %w( fish sheep )
  # end

  # See Rails::Configuration for more options
end

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register "application/x-mobile", :mobile

# Include your application configuration below
