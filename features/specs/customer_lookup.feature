Feature:Customer Lookup

#1
Scenario: Customer lookup with blank form
Given I am at the customer lookup page
When I click the button to find my login info
Then I should get a message in all the required fields

#2
Scenario: Customer lookup with success
Given I have an user already registered
And I am at the customer lookup page
When I fill the form
And I click the button to find my login info
Then I should get 'Your login information was located successfully. You are now logged in.' message


#3
Scenario: Customer lookup with wrong information
Given I have an user already registered
And I am at the customer lookup page
When I fill the form with one wrong information
And I click the button to find my login info
Then I should get 'The customer information provided could not be found.' message

#4
Scenario: Customer lookup with non existing user
Given I am at the customer lookup page
When I fill the form with the information of a non existing user
And I click the button to find my login info
Then I should get 'The customer information provided could not be found.' message

#5
@cl
Scenario: Customer with wrong address
Given I have an user already registered
And I am at the customer lookup page
When I fill the form with a wrong address
And I click the button to find my login info
Then I should get 'The customer information provided could not be found.' message