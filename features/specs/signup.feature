Feature:sign up

#1
Scenario: Sign up with success
Given I am at the sign up page
When I fill all the form fields
And I register
Then I should get "Your account was created successfully. You are now logged in." success message

@test
#2
Scenario: Sign up with blank form
Given I am at the sign up page
When I  register with all the field forms in blank
Then I should get a message to all the required fields

@test
#3
Scenario: Sign up without filling first name field
Given I am at the sign up page
When I sign up without filling the field "first name"
And I register
Then I should get "First name is required." message

#4
Scenario: Sign up without filling second name field
Given I am at the sign up page
When I sign up without filling the field "last name"
And I register
Then I should get "Last name is required." message

#5
Scenario: Sign up without filling address field
Given I am at the sign up page
When I sign up without filling the field "address"
And I register
Then I should get "Address is required." message

#6
Scenario: Sign up without filling city field
Given I am at the sign up page
When I sign up without filling the field "city"
And I register
Then I should get "City is required." message

#7
Scenario: Sign up without filling state field
Given I am at the sign up page
When I sign up without filling the field "state"
And I register
Then I should get "State is required." message

#8
Scenario: Sign up without filling zip code field
Given I am at the sign up page
When I sign up without filling the field "zip code"
And I register
Then I should get "Zip Code is required." message

#9
@tt
Scenario: Sign up without filling SSN field
Given I am at the sign up page
When I sign up without filling the field "SSN"
And I register
Then I should get "Social Security Number is required." message

#10
Scenario: Sign up without filling the username field
Given I am at the sign up page
When I sign up without filling the field "username"
And I register
Then I should get "Username is required." message

#11
Scenario: Sign up without filling password field
Given I am at the sign up page
When I sign up without filling the field "password"
And I register
Then I should get "Password is required." message

#12
Scenario: Sign up without filling password confirmation field
Given I am at the sign up page
When I sign up without filling the field "confirm password"
And I register
Then I should get "Password confirmation is required." message
