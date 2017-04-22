Feature: Gmail account validation

Scenario: username validation
Given I am on Google Sig Up form 
When I insert on First Name textbox: 'new_user_first_name'
And I insert on Last Name textbox: 'new_user_last_name'
And I insert new_gmail_user on Choose your name textbox
And I insert P@ssw0rd on Create Password textbox
And I select December on Month textbox
And I insert 31 on Day textbox
And I insert 1993 on Year textbox
And I select male on Gender dropdown menu
And I insert 78965415 on Mobile Phone textbox
And I insert latest_email789@gmail.com on Your current email addres textbox
And I select Bolivia on Location dropdown menu
And I press 'Next step' button
Then I am able to see a Confirmation Page
