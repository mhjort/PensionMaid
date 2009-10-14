Then /^I get a confirmation message$/ do
  confirmation_message = @browser.get_text('orderStatus')
  @agreement_id = confirmation_message.scan(/\d+/)[0]
end

Then /^I get an error message$/ do
  @browser.is_element_present("errorExplanation").should be_true
end

Then /^ordering is not possible$/ do
  @browser.is_element_present('//input[@disabled=""]').should be_true
end
