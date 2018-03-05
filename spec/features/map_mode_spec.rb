require 'rspec'
require 'rspec/expectations'
require 'appium_lib'
require 'rubygems'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest/element/text'

RSpec.describe 'I can change between a light map or a dark map' do

  it ' I my app launches on the dark map mode, I can click the setting icon' do
    $driver.find_element(accessibility_id: 'Skip').click
    $driver.find_element(accessibility_id: 'settings icon darkmap').click
  end

  it 'I can click on the Light map button to change the mode' do
    $driver.find_element(accessibility_id: 'Switch to Light Map').click
  end

  it 'The setting window will close and the map will be in Light map mode' do
    expect($driver.find_element(accessibility_id: 'settings icon lightmap').text).to eq('settings icon lightmap')
  end

  it 'I can click on the setting icon to change the mode back to Dark map' do
    $driver.find_element(accessibility_id: 'settings icon lightmap').click
  end

  it 'I just click on the Dark map button to change the mode' do
    $driver.find_element(accessibility_id: 'Switch to Dark Map').click
  end

  it 'The setting window will close and the map will be in Dark map mode' do
    expect($driver.find_element(accessibility_id: 'settings icon darkmap').text).to eq('settings icon darkmap')
  end
end