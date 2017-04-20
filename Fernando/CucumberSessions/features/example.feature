Feature: Alternation Example

Scenario: Spotify web app should display the Spotify Web Player page

Given I am in Spotify Web Player sign in page 
When I insert the user and password 
And I click on (Sig|a)
Then I will be able to see the Spotify Web Player page
