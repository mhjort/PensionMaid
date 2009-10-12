Given /^I have given employee's data$/ do
  fill_employee_data
end

Given /^I have left employee's ssn blank$/ do
  type_employee_ssn('')
end

Given /^I have given salary of (.*) euros$/ do |salary| 
  type_salary(salary)
end

When /^I give salary of (.*) euros$/ do |salary|
  type_salary(salary)
end

When /^I give SSN (.*)$/ do |ssn|
  type_employee_ssn(ssn)
end

def fill_employee_data()
  @browser.type('employer_employees_attributes_0_first_name', 'John')
  @browser.type('employer_employees_attributes_0_last_name', 'Smith')
  type_employee_ssn('130579-088M')
  type_salary('2000')
end

def type_employee_ssn(ssn)
  @browser.type('employer_employees_attributes_0_ssn', ssn)
end

def type_salary(salary)
  @browser.type('employer_employees_attributes_0_salary', salary)
end
