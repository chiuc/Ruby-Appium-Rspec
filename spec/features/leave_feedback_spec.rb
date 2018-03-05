require 'spec_helper'
require 'leave_feedback_spec'
require 'rspec'
require 'rspec/expectations'
require 'appium_lib'
require 'rubygems'
require 'selenium-webdriver'
require 'appium_lib/ios/xcuitest/element/text'


RSpec.describe 'I want to be able to leave feedback as I use this cool new app' do

  it 'I click on the gear setting icon, I should see a list of options' do
    $driver.find_element(accessibility_id: 'settings icon darkmap').click
    expect($driver.find_element(accessibility_id: 'Leave Feedback').text).to eq('Leave Feedback')
  end

  it ' I click on the Leave Feedback button, I should see the feedback modal' do
    $driver.find_element(accessibility_id: 'Leave Feedback').click
    expect($driver.find_element(accessibility_id: 'SEND FEEDBACK').text).to eq('SEND FEEDBACK')
  end

  it ' I can add feedback in the text box' do
    $driver.find_element(xpath: "//*[@name='Live dev']/XCUIElementTypeWindow[1]/
          XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/
          XCUIElementTypeScrollView[1]/XCUIElementTypeOther[1]").send('TEST')
  end

  it 'I should see Four types of feedback, and should select one option' do
    expect($driver.find_element(accessibility_id: 'Bug').text).to eq('Bug')
    expect($driver.find_element(accessibility_id: 'General').text).to eq('General')
    expect($driver.find_element(accessibility_id: 'Content').text).to eq('Content')
    expect($driver.find_element(accessibility_id: 'Feature Request').text).to eq('Feature Request')
  end

  it 'I should be able to click on the Send Feedback button to submit it' do
    $driver.find_element(accessibility_id: 'SEND FEEDBACK').click
    expect($driver.find_element(xpath: "/*[@name='Thank you for your feedback!']").text).to eq('Thank you for your feedback')
     a = switch_to.alert
         a.accept
  end
end