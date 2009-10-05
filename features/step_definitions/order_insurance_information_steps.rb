require 'spec/expectations'
require 'selenium'
 
# "before all"
browser = Selenium::SeleniumDriver.new("localhost", 4444, "*firefox", "http://localhost", 15000)
 
Before do
  @browser = browser
  @browser.start
end
 
After do
  @browser.stop
end
 
# "after all"
at_exit do
  browser.close rescue nil
end

Given /^I have given correct contact information$/ do
  @browser.open('http://localhost:3000')
end

When /^I order the information package$/ do
  pending
end

Then /^I get a confirmation message$/ do
  pending
end

Then /^the order is registered$/ do
  pending
end


