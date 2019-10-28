require "capybara"
require "capybara/rspec"
require "capybara/cucumber"
require "selenium-webdriver"


Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = "http://www.juliodelima.com.br/taskit"
    config.default_max_wait_time = 5
end