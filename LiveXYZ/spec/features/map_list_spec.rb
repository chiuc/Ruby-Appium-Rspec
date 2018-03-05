require '../spec_helper'
require '../features/map_list_spec'
require 'rspec'
require 'rspec/expectations'
require 'appium_lib'
require 'rubygems'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest/element/text'


describe(' To organize some cool lists of venues and events, I can create our own map lists') do

  it 'I click on the map icon I will go to the Maplists page' do
    $driver.find_element(accessibility_id: 'profile icon').click
  end

  it 'I can create a new list by clicking the large plus icon' do
    $driver.find_element(xpath: "//*[@name='Live dev'/XCUIElementTypeWindow[1]/
    XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/
    XCUIElementTypeOther[1]/XCUIElementTypeButton[1]").click
  end

  it 'After I enter the name of my new list I can click create map' do
    $driver.find_element(accessibility_id: 'CREATE MAP').click
  end

  it 'I shoiuld be taken back to the Maplists page, and I can click the back arrow to return to the main map page' do
    $driver.find_element(accessibility_id: 'back icon').click
  end

  it 'To see my new maplist I can click on the map icon, and my new maplist will be visible' do
    $driver.find_element(accessibility_id: 'profile icon').click
  end
end