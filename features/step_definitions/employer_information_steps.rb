Given /^I have given employer's data$/ do
  @ssn = '130579-088M'
  @browser.type('employer_first_name', 'Tiina') 
  @browser.type('employer_last_name', 'Kiuru') 
  @browser.type('employer_ssn', @ssn)
  @browser.type('employer_address', 'Pengerkatu 9 A 9')
  @browser.type('employer_postal_code', '00530')
  @browser.type('employer_city', 'Helsinki')
   
end

Given /^I have not given address$/ do
  @browser.type('employer_address', '')
end

Given /^I have given employee's data$/ do
  @browser.type('employee_first_name', 'John')
  @browser.type('employee_last_name', 'Smith')
  @browser.type('employee_ssn', '132456-156N')
end

Given /^I have left employee's ssn blank$/ do
  @browser.type('employee_ssn', '')
end

When /^I order the information package$/ do
  @browser.click 'employer_submit'
  @browser.wait_for_page_to_load(200)
end

When /^I order the invoice$/ do
  @browser.click 'invoice_submit'
  @browser.wait_for_page_to_load(200)
end

Then /^I get a confirmation message$/ do
  @browser.is_text_present("Employer was successfully created.").should be_true
end

Then /^the order is registered$/ do
  count = @db.get_first_value("select count(*) from employers where ssn = '#@ssn'" )
  count.to_i.should eql 1
end

Then /^I get an error message$/ do
  @browser.is_element_present("errorExplanation").should be_true
end

