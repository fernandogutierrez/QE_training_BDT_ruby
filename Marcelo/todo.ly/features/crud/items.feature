@api_test
Feature: Test todo.ly API items

Scenario: Get all items for current user
	Given I have set a connection to application
	When I send a GET request to /Items.json
	Then I expect HTTP code 200
