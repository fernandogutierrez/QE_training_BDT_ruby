
Feature: Search client

@regression
Scenario Outline: Search total amount
    Given I have the <Id> of the client
    And I have the name <Name> of the client 
    When I search client by id <Id>
    Then I see the total amount <Total>

Examples:
| Id | Name     | Total  |
| 1  | Juan     | 12.5   |
| 2  | Ana      | 4.5    |
| 3  | Javier   | 12.0   |
| 4  | Fernando | 65.2   |
| 5  | Ariel    | 35.2   |


@crud
Scenario: Search client by name
    Given I have a list of clients
    When I search a client with name Ariel
    Then I verify that the Ariel is in the list