# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require File.expand_path('../dummy/config/environment.rb', __FILE__)
require 'rails/test_help'
if Rails.version.split('.')[0].to_i > 3
  require 'mocha/mini_test'
end

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

Gonzales.configure do |config|
  factory_module_path = Rails.root.join('test', 'dummy', 'test', 'speedy.rb')
  factory_cache_path  = Rails.root.join('test', 'dummy', 'tmp', 'speedy.yml')

  config.factory_module = factory_module_path if File.exist?(factory_module_path)
  config.factory_cache = factory_cache_path if File.exist?(factory_cache_path)
end
