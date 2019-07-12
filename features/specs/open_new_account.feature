Feature: Open New Account 

#1
@ona
Scenario: Creating a new checking account with success
Given I have an user already registered
And I am logged in the Parabank website
And I am in the open account page
When I select the type account 'CHECKING' and the existing account to transfer the funds
And  I click in the button open new account
Then I should get 'Congratulations, your account is now open.' message
And A new account number should be displayed
And I could have access to the new account clicking in the link
And The new account has to be 'CHECKING' type with '$100' balance


#2
@ona
Scenario: Creating a new saving account with success
Given I have an user already registered
And I am logged in the Parabank website
And I am in the open account page
When I select the type account 'SAVINGS' and the existing account to transfer the funds
And  I click in the button open new account
Then I should get 'Congratulations, your account is now open.' message
And A new account number should be displayed
And I could have access to the new account clicking in the link
And The new account has to be 'SAVINGS' type with '$100' balance

