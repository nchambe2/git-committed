require 'simplecov'
SimpleCov.start

# Previous content of test helper now starts here

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "rack/test"
require "minitest/reporters"
require "minitest/rails"
require "minitest/rails/capybara"

Minitest::Reporters.use!(
  Minitest::Reporters::SpecReporter.new,
  ENV,
  Minitest.backtrace_filter
)

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
    # include Rack::Test::Methods
  # Add more helper methods to be used by all tests here...
end
