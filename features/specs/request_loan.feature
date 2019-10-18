Feature: Request Loan

#1
Scenario: Apply for a loan without filling the fields
Given I have an user already registered
And I am logged in the Parabank website
And I am in the request loan page
When I click the button Apply Now
Then I should get 'An internal error has occurred and has been logged.' message 

#2
Scenario: Apply for a loan without filling loan amount
Given I have an user already registered
And I am logged in the Parabank website
And I am in the request loan page
When I fill the field 'amount' 
And I click the button Apply Now
Then I should get 'An internal error has occurred and has been logged.' message

#3

Scenario: Apply for a loan without filling down payment
Given I have an user already registered
And I am logged in the Parabank website
And I am in the request loan page
When I fill the field 'down payment' 
And I click the button Apply Now
Then I should get 'An internal error has occurred and has been logged.' message

#4

Scenario: Apply for a loan with success
Given I have an user already registered
And I am logged in the Parabank website
And I am in the request loan page
When I fill the Apply for a loan form with valid entries
And I click the button Apply Now
Then I should get 'Congratulations, your loan has been approved.' message


#5
@rl
Scenario Outline: Apply for a loan without success 
Given I have an user already registered
And I am logged in the Parabank website
And I am in the request loan page
When I fill the form with <amount> and <down payment>
And I click the button Apply Now
Then I should not be able to get a loan and an error '<message>' should be displayed

Examples:
|amount|down payment|message                                                         |
|-100  |-100        |We cannot grant a loan in that amount with your available funds.|
|10000 |10000       |You do not have sufficient funds for the given down payment.    |
|0     |0           |An internal error has occurred and has been logged.             |

