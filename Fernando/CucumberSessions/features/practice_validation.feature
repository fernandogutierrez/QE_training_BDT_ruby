Feature: Log in Validation

Scenario: Log in page with some validations

Given I am in log in page
When I insert a zip code $12565
And I insert a username $'username'
And I insert a Country $'Bolivia'
And I press enter key
Then I will be able to see the Home page
