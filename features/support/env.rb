require 'capybara/cucumber'
require 'cucumber'
Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :driver_path => "/Users/cheitanb/Documents/chromedriver")
end

