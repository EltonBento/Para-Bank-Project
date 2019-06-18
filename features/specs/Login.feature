Feature:Login

#1
@log
Scenario: Login with success
Given I have an user already registered
And I am at the home page
When I fill the username and password in the customer login section
And I click in the login button
Then I should have access to the account overview page

#2
Scenario: Log out
Given I am logged in the Parabank website
When I logout
Then I should be redirect to the home page

#3
Scenario: Login with blank fields
Given I am at the home page
When I click in the login button
Then I should get 'Please enter a username and password.' message

#4
Scenario: Login without password
Given I am at the home page
When I fill only the 'username' in the customer login section
And I click in the login button
Then I should get 'Please enter a username and password.' message

#5
Scenario: Login without username
Given I am at the home page
When I fill only the 'password' in the customer login section
And I click in the login button
Then I should get 'Please enter a username and password.' message

#6

@log
Scenario: Login with wrong password
Given I am at the home page
And I have an user already registered
When I fill the username and a wrong password in the customer login section
And I click in the login button
Then I should get 'The username and password could not be verified.' message