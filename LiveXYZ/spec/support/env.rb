require 'rubygems'
require 'rspec/expectations'
require 'appium_lib'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest'

caps = Appium.load_appium_txt file: File.join(Dir.pwd, 'appium.txt')

appium_url = 'http://localhost:4723'

Before {
  @driver = Selenium::WebDriver.for(:remote, :url => appium_url, :desired_capabilities => caps)

}

After {
  @driver.quit
}