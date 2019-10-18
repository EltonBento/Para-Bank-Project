Feature: Update Contact Info

#1
Scenario: upadate with success
Given I have an user already registered
And I am logged in the Parabank website
And I am in the update profile page
When I updates all fields
And I click in update profile
Then I should get 'Your updated address and phone number have been added to the system.' message

#2
@uci
Scenario: update with blank fields
Given I have an user already registered
And I am logged in the Parabank website
And I am in the update profile page
When I clean all fields
And I click in update profile
Then I should get a message to all required fields
