Feature: Bill Payment

#1
Scenario: Pay bill without filling the form
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I click on the send payment button
Then I should get a message for each of the required fields


#2
Scenario: Pay bill with success
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all the form fields from the payment page
And I click on the send payment button
Then I should get 'Bill Payment Complete' message


#3
Scenario: Pay bill without filling the filling the field Payee Name
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all fields but 'payee_name'
And I click on the send payment button
Then I should get 'Payee name is required.' message

#4
Scenario: Pay bill without filling the field address
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all fields but 'address'
And I click on the send payment button
Then I should get 'Address is required.' message

#5
Scenario: Pay bill without filling the field city
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all fields but 'city'
And I click on the send payment button
Then I should get 'City is required.' message

#6
Scenario: Pay bill without filling the field state
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all fields but 'state'
And I click on the send payment button
Then I should get 'State is required.' message

#7
Scenario: Pay bill without filling the field zip code
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all fields but 'zip_code'
And I click on the send payment button
Then I should get 'Zip Code is required.' message

#8
Scenario: Pay bill without filling the field phone
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all fields but 'phone'
And I click on the send payment button
Then I should get 'Phone number is required.' message

#9
Scenario: Pay bill without filling the field account
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all fields but 'account'
And I click on the send payment button
Then I should get 'Account number is required.' message

#10
Scenario: Pay bill without filling the field Verify Account 
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all fields but 'verify_account'
And I click on the send payment button
Then I should get 'Account number is required.' message


#11
Scenario: Pay bill without filling the field amount
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all fields but 'amount'
And I click on the send payment button
Then I should get 'The amount cannot be empty.' message


#12
@bp
Scenario: Pay bill with account number and verify account field different
Given I have an user already registered
And I am logged in the Parabank website
And I am in the bill payment page
When I fill all fields but account and verify account with different values
And I click on the send payment button
Then I should get 'The account numbers do not match.' message


