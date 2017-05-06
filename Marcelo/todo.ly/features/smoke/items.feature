@smoke
Feature: Test todo.ly API items

Scenario: Verify Status code 200 after getting all items for current user
	Given I have set a connection to application
	When I send a GET request to /Items.json
	Then I expect HTTP code 200


Scenario: Verify Status code 200 after getting the root parent item 
    Given I have set a connection to application 
    When I send a GET request to /Items.json and keep all the items id
    And I select a random "Id" of the list as "$id"
    And I send a GET request to /Items/id/RootItem.json with "id" equal to "$id"
    Then I expect HTTP code 200
