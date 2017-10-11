require 'cucumber'
require 'selenium-webdriver'
require 'pry'
require 'rspec'
require 'page-object'
require 'cukehub'
require 'yaml'

Before do |scenario|
  @cukehub_api_key = "EEkMZ9hFrZnjKi1LZbLRaLYm"
  @browser = Selenium::WebDriver.for :firefox
  @browser.manage.window.maximize
  @domain = "https://data.boston.gov/"
  @boston_gov = BostonGov.new(@browser)
end

After do 
  @browser.quit
end
