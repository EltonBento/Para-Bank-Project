require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
#making it able to be read
require_relative 'page_helper.rb'

#making the module global
World(Pages)

Capybara.configure do |config|
   config.default_driver = :selenium
   config.app_host = 'https://parabank.parasoft.com/parabank/'
   config.default_max_wait_time = 10
end
