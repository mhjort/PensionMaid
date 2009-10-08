require 'rest_client'

Given /^I have given the month and year of employment$/ do
end

Then /^the data is reported to billing system$/ do
  ret = RestClient.get 'http://localhost:3001/invoices/1.xml'
  put ret
end

Then /^something happens$/ do
end

