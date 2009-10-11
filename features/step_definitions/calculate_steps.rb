Then /^I get insurance payment of (.*) euros$/ do |payment|
  @browser.type('employer_address', '')
  javascript = 'var value = selenium.getText("//span[@id=\'calculated_amount\']"); value == "' + payment + '.00 €"'
  @browser.wait_for_condition(javascript, 5000)
end  
