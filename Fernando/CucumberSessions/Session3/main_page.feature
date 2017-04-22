Feature: Google
A page with the results of the searching criteria should be displayed after typing on the input text

Scenario: Google page should display data according to the search criteria

Given I open the browser
And I go to google.com.bo
When I type 'Software Testing'
And I press Enter key
Then I will be able to see a page with the results of 'Software Testing'
