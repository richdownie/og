Given /I am on the homepage/i do
  @browser.get(@domain)
end

Given /I search for "(.*)"/i do |value|
  @boston_gov.search(value)
end