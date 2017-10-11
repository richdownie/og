@homepage
Feature: Boston dot Gov Scenarios

Background: 
  Given I am on the homepage
  
Scenario: I verify the bostong.gov homepage
  Then I should see "ANALYZE BOSTON" on the page
  
Scenario Outline: I search the Boston Datasets
  When I search for <search_content>
  And I follow the <link> link
  Then I should see <result> on the page
  
Examples:
  | search_content         | link                       | result                     |
  | "Boston Neighborhoods" | "Boston Neighborhoods"     | "Boston Neighborhoods"     |
  | "Cambridge"            | "Hubway system data"       | "HUBWAY SYSTEM DATA"       |
  | "North end"            | "Clough House archaeology" | "CLOUGH HOUSE ARCHAEOLOGY" |


