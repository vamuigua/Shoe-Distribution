ENV['RACK_ENV'] = 'test'

#gems in the :test group will only be loaded by spec_helper
require("bundler/setup")
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }
Bundler.require(:default, :test)
set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')
