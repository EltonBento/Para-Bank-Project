Feature: Transfer Funds

#1
@tf
Scenario: Transfer funds to a different account with success
Given I have an user already registered
And I am logged in the Parabank website
And I am in the transfer funds page
When I fill the fields with different accounts and with amount equal to "10"
And I click on the transfer button
Then I should get 'Transfer Complete!' message

#2
@tf
Scenario: Transfer funds without filling the field amount
Given I have an user already registered
And I am logged in the Parabank website
And I am in the transfer funds page
When I fill the fields with different accounts and with amount equal to ""
And I click on the transfer button
Then I should get 'The amount cannot be empty.' message
