require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec'
require 'rspec/expectations'
require 'site_prism'
require_relative 'page.initialize.rb'
include RSpec::Matchers

Envioriment= ENV['URL']

World(Page)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = Envioriment
    config.default_max_wait_time = 5
end