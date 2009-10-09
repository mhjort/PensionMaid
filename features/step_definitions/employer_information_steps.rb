Given /^I have given employer's data$/ do
  fill_employer_data 
end

Given /^I have not given address$/ do
  @browser.type('employer_address', '')
end

Given /^I have given employee's data$/ do
  fill_employee_data
end

Given /^I have left employee's ssn blank$/ do
  @browser.type('employee_ssn', '')
end

Given /^I have given required data$/ do
  fill_obligatory_fields
end

Given /^I have given salary of (.*) euros$/ do |salary| 
  @browser.type('employee_salary', salary)
end

When /^I order the information package$/ do
  @browser.click 'employer_submit'
  @browser.wait_for_page_to_load(1000)
end

When /^I give salary of (.*) euros$/ do |salary|
  @browser.type('employee_salary', salary)
end

When /^I order the invoice$/ do
  @browser.click 'employer_submit'
  @browser.wait_for_page_to_load(200)
end

When /^I give SSN (.*)$/ do |ssn|
  @browser.type('employee_ssn', ssn)
end

Then /^I get a confirmation message$/ do
  # TODO Currently not working
  #@browser.is_text_present("Employer was successfully created.").should be_true
end

Then /^the order is registered$/ do
  count = @db.get_first_value("select count(*) from employers where ssn = '#@ssn'" )
  count.to_i.should eql 1
end

Then /^I get an error message$/ do
  @browser.is_element_present("errorExplanation").should be_true
end

Then /^the employee's part is (.*) euros$/ do |expected_employee_part|
  @browser.get_text('employee_part').should eql expected_employee_part
end

def fill_obligatory_fields()
 fill_employer_data
 fill_employee_data 
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

def fill_employee_data()
  @browser.type('employee_first_name', 'John')
  @browser.type('employee_last_name', 'Smith')
  @browser.type('employee_ssn', '132456-156N')
end
