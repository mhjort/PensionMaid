Given /^I have given employer's data$/ do
  fill_employer_data 
end

Given /^I have not given address$/ do
  @browser.type('employer_address', '')
end

def fill_employer_data()
  @ssn = '130579-088M'
  @browser.type('employer_first_name', 'Tiina') 
  @browser.type('employer_last_name', 'Kiuru') 
  @browser.type('employer_ssn', @ssn)
  @browser.type('employer_address', 'Pengerkatu 9 A 9')
  @browser.type('employer_postal_code', '00530')
  @browser.type('employer_city', 'Helsinki') 
end

