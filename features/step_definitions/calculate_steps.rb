Then /^I get insurance payment of (.*) euros$/ do |payment|
  @browser.wait_for_condition('selenium.isElementPresent("//span[@id=\'calculated_amount\']");', 5000)
  @browser.get_text('calculated_amount').should eql(payment + '.00 €')
end  

Then /^I am informed about too high salary$/ do
  @browser.wait_for_condition('selenium.isElementPresent("//span[@id=\'high_salary_notice\']");', 1000)
end

Then /^the employee's part is (.*) euros$/ do |expected_employee_part|
  @browser.get_text('employee_part').should eql expected_employee_part
end

