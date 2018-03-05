require '../spec_helper'
require '../features/locate_me_spec'
require 'rspec'
require 'rspec/expectations'
require 'appium_lib'
require 'rubygems'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest/element/text'


describe 'I can easily find my location anytime on the map' do

  it 'I click on the locate me button' do
    $driver.find_element(accessibility_id: 'Skip').click
    $driver.find_element(accessibility_id: 'zoom to me darkmap icon').click
  end

  it ' I click on the locate me button I should receive a permission pop up alert' do


  end

  it ' I can click on allow and the app will find my location on the map' do
    a = switch_to.alert
    a.accept
    expect($driver.find_element(accessibility_id: 'You Are Here').text).to eq('You Are Here')
  end

  it 'I will close the app and then open it back up' do
     close
    launch
     $driver.find_element(accessibility_id: 'Skip').click
     $driver.find_element(accessibility_id: 'zoom to me darkmap icon').click
  end

  it 'I click on the locate me button I should not receive a permission pop up' do
    $driver.find_element(accessibility_id: 'zoom to me darkmap icon').click
  end

  it 'I should be sent to my current location on the map' do
    expect($driver.find_element(accessibility_id: 'You Are Here').text).to eq('You Are Here')
  end
end