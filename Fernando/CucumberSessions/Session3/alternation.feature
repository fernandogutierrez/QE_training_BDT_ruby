Feature: Alternation Example

Scenario: Spotify web app should display the Spotify Web Player page

Given I am in Spotify Web Player Sig in page
When I insert the user and password 
And I click on $'Log in with Facebook'
Then I will be able to see the Spotify Web Player page
