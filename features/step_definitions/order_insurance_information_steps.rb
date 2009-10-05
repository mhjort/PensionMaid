require 'sqlite3'

Before do
  @db = SQLite3::Database.new( "db/development.sqlite3")
  @db.execute("delete from employers")
end

Given /^I have given correct contact information$/ do
  @ssn = '130579-088M'
  @browser.open('http://localhost:3000')
  @browser.type('employer_first_name', 'Tiina') 
  @browser.type('employer_last_name', 'Kiuru') 
  @browser.type('employer_ssn', @ssn)
  @browser.type('employer_address', 'Pengerkatu 9 A 9')
  @browser.type('employer_postal_code', '00530')
  @browser.type('employer_city', 'Helsinki')
   
end

When /^I order the information package$/ do
  @browser.click 'employer_submit'
  @browser.wait_for_page_to_load(200)
end

Then /^I get a confirmation message$/ do
  @browser.is_text_present("Employer was successfully created.").should be_true
end

Then /^the order is registered$/ do
  count = @db.get_first_value("select count(*) from employers where ssn = '#@ssn'" )
  count.to_i.should eql 1
end